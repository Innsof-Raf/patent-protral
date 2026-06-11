import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/resources/urls.dart';

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
    final data = serviceRequest(type: 'PP0024');

    final response = await client.post(
      url: ConstantUrls.serviceUrl,
      body: data,
      token: token,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = response.data;
      return responseData
          .map((raw) => InsuranceModel.fromJson(raw as Map<String, dynamic>))
          .toList();
    }

    throw Exception('Server Failure');
  }

  @override
  Future<MemberModel> addMember(AddMemberParams params) async {
    return params.maybeMap(
      addMember: (p) async {
        final contentMap = {
          "id_customer": 0,
          "customer_name": p.patientName,
          "mobile_no": p.mobileNumber,
          "national_id": p.nationalId,
          "email_id": p.email,
          "dob": p.dob.toString(),
          "gender": p.gender,
          "id_insurance": p.idInsurance,
          "member_no": p.memberNumber,
          "expiry_dt": p.expireDate?.toString(),
          "others": p.otherInsuranceName?.toUpperCase(),
          "profile_image": p.profileImage != null ? "profile.png" : null,
        };

        FormData formData = FormData.fromMap({
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

        if (response.statusCode == 200) {
          final responseData = response.data;

          if (responseData['status'] == true) {
            return MemberModel.fromJson(responseData['patient_detail']);
          } else {
            throw Exception(
              responseData['message'] ??
                  'Member already registered with same national id',
            );
          }
        } else {
          throw Exception('Server Failure');
        }
      },
      orElse: () => throw Exception('Invalid Params for addMember'),
    );
  }

  @override
  Future<MemberModel> updateInsurance(AddMemberParams params) async {
    return params.maybeMap(
      updateInsurance: (p) async {
        final data = serviceRequest(
          type: 'PP0035',
          content: {
            "id_customer": p.memberId,
            "id_insurance": p.idInsurance,
            "insurance_name": p.idInsurance == 0 ? p.insuranceName : null,
            "expire_date": p.expireDate.toString(),
            "member_number": p.memberNumber,
          },
        );
        final response = await client.post(
          url: ConstantUrls.serviceUrl,
          body: data,
          token: p.token,
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final Map<String, dynamic> responseData = decodeResponseData(
            response.data,
          );
          return MemberModel.fromJson(responseData['customer_detail']);
        } else {
          throw Exception('Server Failure');
        }
      },
      orElse: () => throw Exception('Invalid Params for updateInsurance'),
    );
  }
}
