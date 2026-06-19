import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';

abstract class AddMemberRemoteDataSource {
  Future<List<InsuranceModel>> getInsuranceTypes({required String token});
  Future<MemberModel> addMember(AddMemberParams params);
  Future<MemberModel> updateInsurance(AddMemberParams params);
}

class AddMemberRemoteDataSourceImpl implements AddMemberRemoteDataSource {
  final ApiAgent client;

  AddMemberRemoteDataSourceImpl({required this.client});

  @override
  Future<List<InsuranceModel>> getInsuranceTypes({
    required String token,
  }) async {
    try {
      final data = serviceRequest(type: 'PP0024');

      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: token,
      );

      final dynamic rawData = response.data;
      final List<dynamic> responseData = rawData is String
          ? jsonDecode(rawData) as List<dynamic>
          : rawData as List<dynamic>;

      return responseData
          .map((raw) => InsuranceModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('getInsuranceTypes Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  @override
  Future<MemberModel> addMember(AddMemberParams params) async {
    return params.maybeMap(
      addMember: (p) async {
        try {
          final contentMap = {
            'id_customer': 0,
            'customer_id': 'New',
            'id_setid': 4,
            'customer_name': p.patientName,
            'customer_status': 'ACTIVE',
            'customer_type': 'PATIENT',
            'mobile_no': p.mobileNumber,
            'national_id': p.nationalId,
            'email': p.email,
            'dob': DateFormat('yyyy-MM-dd').format(p.dob),
            'gender': p.gender,
            'id_insurance': p.idInsurance,
            'member_no': p.memberNumber,
            'expiry_dt': p.expireDate != null
                ? DateFormat('yyyy-MM-dd').format(p.expireDate!)
                : null,
            'others': p.otherInsuranceName?.toUpperCase(),
            'profile_img': p.profileImage != null ? 'profile.png' : null,
          };

          final FormData formData = FormData.fromMap({
            'saveRequest': jsonEncode(
              serviceRequest(type: 'HMS0035', content: contentMap),
            ),
            'pathidentifier': 'PatientProfileImage',
            'removeProfilePic': 'false',
          });

          if (p.profileImage != null) {
            formData.files.add(
              MapEntry(
                'uploads',
                await MultipartFile.fromFile(
                  p.profileImage!.path,
                  filename: 'profile.png',
                ),
              ),
            );
          }

          final response = await client.post(
            url: ConstantUrls.addMember,
            body: formData,
            token: p.accessToken,
          );

          final dynamic rawData = response.data;
          final Map<String, dynamic> responseData = decodeResponseData(rawData);

          if (responseData['status'] == true ||
              responseData['status']?.toString().toLowerCase() == 'true') {
            final patientDetail = decodeResponseData(
              responseData['patient_detail'],
            );
            if (patientDetail is Map<String, dynamic>) {
              return MemberModel.fromJson(patientDetail);
            }

            final memberId = intFromJson(responseData['id_customer']);
            if (memberId != 0) {
              try {
                return await _getMemberDetail(
                  memberId: memberId,
                  token: p.accessToken,
                );
              } catch (_) {}
            }

            return _memberModelFromParams(
              memberId: memberId,
              patientName: p.patientName,
              mobileNumber: p.mobileNumber,
              email: p.email,
              dob: p.dob,
              nationalId: p.nationalId,
              hasProfileImage: p.profileImage != null,
              idInsurance: p.idInsurance,
              expireDate: p.expireDate,
              memberNumber: p.memberNumber,
              otherInsuranceName: p.otherInsuranceName,
              gender: p.gender,
            );
          } else {
            throw ServerException(
              responseData['message'] ??
                  'Member already registered with same national id',
            );
          }
        } on ServerException {
          rethrow;
        } catch (e, stackTrace) {
          log('addMember Error', error: e, stackTrace: stackTrace);
          throw ServerException(e.toString());
        }
      },
      orElse: () => throw ServerException('Invalid Params for addMember'),
    );
  }

  Future<MemberModel> _getMemberDetail({
    required int memberId,
    required String token,
  }) async {
    final data = serviceRequest(
      type: 'HMS0034',
      content: {'id_customer': memberId},
    );
    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );
    final Map<String, dynamic> responseData = decodeResponseData(response.data);
    return MemberModel.fromJson(responseData);
  }

  MemberModel _memberModelFromParams({
    required int memberId,
    required String patientName,
    required String mobileNumber,
    required String? email,
    required DateTime dob,
    required String nationalId,
    required bool hasProfileImage,
    required int? idInsurance,
    required DateTime? expireDate,
    required String? memberNumber,
    required String? otherInsuranceName,
    required String gender,
  }) {
    return MemberModel(
      id: memberId,
      name: patientName,
      mobileNo: mobileNumber,
      emailId: email,
      age: _calculateAge(dob),
      nationalId: nationalId,
      profileImage: hasProfileImage ? 'profile.png' : null,
      isInsurance: idInsurance != null,
      isInsuranceExpired: false,
      insuranceExpDttm: expireDate,
      dob: dob,
      memberNo: memberNumber,
      insuranceName: otherInsuranceName,
      insuranceId: idInsurance,
      gender: gender,
      memberDocs: const [],
    );
  }

  String _calculateAge(DateTime dob) {
    final today = DateTime.now();
    var age = today.year - dob.year;
    final hasHadBirthday =
        today.month > dob.month ||
        (today.month == dob.month && today.day >= dob.day);
    if (!hasHadBirthday) age--;
    return age.toString();
  }

  @override
  Future<MemberModel> updateInsurance(AddMemberParams params) async {
    return params.maybeMap(
      updateInsurance: (p) async {
        try {
          final data = serviceRequest(
            type: 'PP0035',
            content: {
              'id_customer': p.memberId,
              'id_insurance': p.idInsurance,
              'insurance_name': p.idInsurance == 0 ? p.insuranceName : null,
              'expire_date': DateFormat('yyyy-MM-dd').format(p.expireDate),
              'member_number': p.memberNumber,
            },
          );
          final response = await client.post(
            url: ConstantUrls.serviceUrl,
            body: data,
            token: p.token,
          );

          final Map<String, dynamic> responseData = decodeResponseData(
            response.data,
          );
          return MemberModel.fromJson(responseData['customer_detail']);
        } on ServerException {
          rethrow;
        } catch (e, stackTrace) {
          log('updateInsurance Error', error: e, stackTrace: stackTrace);
          throw ServerException(e.toString());
        }
      },
      orElse: () => throw ServerException('Invalid Params for updateInsurance'),
    );
  }
}
