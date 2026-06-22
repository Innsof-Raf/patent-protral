import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/error/exceptions.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

abstract class ProfileRemoteDataSource {
  Future<MemberModel> addMember(ProfileParams params);

  Future<MemberModel> changeMemberInsuranceDetails(ProfileParams params);

  Future<MemberModel> getMemberDetail(ProfileParams params);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiAgent client;

  ProfileRemoteDataSourceImpl({required this.client});

  @override
  Future<MemberModel> addMember(ProfileParams params) async {
    return params.maybeMap(
      addMember: (p) async {
        return _addMember(p);
      },
      orElse: () => throw ServerException('Invalid Params for addMember'),
    );
  }

  Future<MemberModel> _addMember(AddMemberParams p) async {
    try {
      final user = p.user;
      final idCustomer = _resolveCustomerId(p);

      final content = {
        'id_customer': idCustomer,
        'customer_id': idCustomer == 0 ? 'New' : '',
        'id_setid': 4,
        'customer_name': p.patientName,
        'customer_status': 'ACTIVE',
        'customer_type': 'PATIENT',
        'gender': p.gender,
        'mobile_no': p.mobileNumber ?? user?.mobileNumber,
        'email': p.email ?? user?.emailId,
        'dob': DateFormat('yyyy-MM-dd').format(p.dob),
        'national_id': p.nationalId,
        'id_insurance': p.idInsurance,
        'member_no': p.memberNumber,
        'expiry_dt': p.expireDate != null
            ? DateFormat('yyyy-MM-dd').format(p.expireDate!)
            : null,
        'others': p.otherInsuranceName?.toUpperCase(),
        'profile_img': p.profileImage != null ? 'profile.png' : null,
      };

      final saveRequest = serviceRequest(type: 'HMS0035', content: content);

      final FormData formData = FormData.fromMap({
        'saveRequest': jsonEncode(saveRequest),
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
        token: user?.accessToken,
      );

      final responseData = decodeResponseData(response.data);

      if (responseData is! Map<String, dynamic>) {
        throw ServerException('Invalid profile update response');
      }

      final isSuccess =
          responseData['status'] == true ||
          responseData['status']?.toString().toLowerCase() == 'true';

      if (!isSuccess) {
        throw ServerException(
          responseData['message'] ??
              'Member already registered with same national id',
        );
      }

      final patientDetail = decodeResponseData(responseData['patient_detail']);

      if (patientDetail is Map<String, dynamic>) {
        return MemberModel.fromJson(patientDetail);
      }

      final updatedCustomerId = intFromJson(responseData['id_customer']) == 0
          ? idCustomer
          : intFromJson(responseData['id_customer']);

      if (updatedCustomerId != 0 && user != null) {
        try {
          return await getMemberDetail(
            ProfileParams.getMemberDetail(
              memberId: updatedCustomerId,
              token: user.accessToken,
            ),
          );
        } catch (_) {}
      }

      return _memberModelFromParams(p, updatedCustomerId);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('_addMember Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }

  int _resolveCustomerId(AddMemberParams params) {
    final user = params.user;
    if (user == null) return 0;
    if (user.idMember != 0) return user.idMember;
    if (user.members.isNotEmpty) return user.members.first.id;
    return 0;
  }

  MemberModel _memberModelFromParams(AddMemberParams params, int idCustomer) {
    final user = params.user;
    final existingMember = _existingMember(user, idCustomer);

    return MemberModel(
      id: idCustomer,
      name: params.patientName,
      mobileNo:
          params.mobileNumber ?? user?.mobileNumber ?? existingMember?.mobileNo,
      emailId: params.email ?? user?.emailId ?? existingMember?.emailId,
      age: existingMember?.age ?? '',
      nationalId: params.nationalId,
      profileImage: existingMember?.profileImage,
      isInsurance: existingMember?.isInsurance ?? false,
      isInsuranceExpired: existingMember?.isInsuranceExpired ?? false,
      insuranceExpDttm: params.expireDate ?? existingMember?.insuranceExpDttm,
      dob: params.dob,
      memberNo: params.memberNumber ?? existingMember?.memberNo,
      insuranceName: params.otherInsuranceName ?? existingMember?.insuranceName,
      insuranceId: params.idInsurance ?? existingMember?.insuranceId,
      gender: params.gender,
      memberDocs: const [],
      isSelected: existingMember?.isSelected ?? false,
    );
  }

  Member? _existingMember(User? user, int idCustomer) {
    if (user == null) return null;
    for (final member in user.members) {
      if (member.id == idCustomer) return member;
    }
    return user.members.isEmpty ? null : user.members.first;
  }

  @override
  Future<MemberModel> changeMemberInsuranceDetails(ProfileParams params) async {
    return params.maybeMap(
      changeMemberInsuranceDetails: (p) async {
        return _changeMemberInsuranceDetails(p);
      },
      orElse: () => throw ServerException(
        'Invalid Params for changeMemberInsuranceDetails',
      ),
    );
  }

  Future<MemberModel> _changeMemberInsuranceDetails(
    ChangeMemberInsuranceDetailsParams p,
  ) async {
    try {
      final data = serviceRequest(type: 'PP0035', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      final responseData = decodeResponseData(response.data);
      return MemberModel.fromJson(responseData['customer_detail']);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log(
        '_changeMemberInsuranceDetails Error',
        error: e,
        stackTrace: stackTrace,
      );
      throw ServerException(e.toString());
    }
  }

  @override
  Future<MemberModel> getMemberDetail(ProfileParams params) async {
    return params.maybeMap(
      getMemberDetail: (p) async {
        return _getMemberDetail(p);
      },
      orElse: () => throw ServerException('Invalid Params for getMemberDetail'),
    );
  }

  Future<MemberModel> _getMemberDetail(GetMemberDetailParams p) async {
    try {
      final data = serviceRequest(type: 'HMS0034', content: p.toJson());
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );
      final Map<String, dynamic> responseData = decodeResponseData(
        response.data,
      );
      return MemberModel.fromJson(responseData);
    } on ServerException {
      rethrow;
    } catch (e, stackTrace) {
      log('_getMemberDetail Error', error: e, stackTrace: stackTrace);
      throw ServerException(e.toString());
    }
  }
}
