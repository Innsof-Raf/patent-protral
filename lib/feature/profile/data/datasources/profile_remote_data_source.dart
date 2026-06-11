import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patient_portal/core/resources/api_agent.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/core/resources/urls.dart';

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
      orElse: () => throw Exception('Invalid Params for addMember'),
    );
  }

  Future<MemberModel> _addMember(AddMemberParams p) async {
    try {
      final content = {
        "id_customer": 0,
        "customer_name": p.patientName,
        "mobile_no": p.user!.mobileNumber,
        "national_id": p.nationalId,
        "email_id": p.email,
        "dob": p.dob,
        "gender": p.gender,
        "id_insurance": p.idInsurance,
        "member_no": p.memberNumber,
        "expiry_dt": p.expireDate,
        "others": p.otherInsuranceName?.toUpperCase(),
        "profile_image": p.profileImage != null ? "profile.png" : null,
      };

      final saveRequest = serviceRequest(type: 'HMS0035', content: content);

      FormData formData = FormData.fromMap({
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
        token: p.user?.accessToken,
      );

      if (response.statusCode == 200) {
        final responseData = response.data;

        if (responseData['status'] == true) {
          return MemberModel.fromJson(responseData['patient_detail']);
        } else {
          throw Exception('Member alredy registerd with same national id');
        }
      } else {
        throw Exception('Server Failure');
      }
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw Exception('No Network');
      } else if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Connection Timeout');
      }
      throw Exception(e.message ?? 'Server Failure');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<MemberModel> changeMemberInsuranceDetails(ProfileParams params) async {
    return params.maybeMap(
      changeMemberInsuranceDetails: (p) async {
        return _changeMemberInsuranceDetails(p);
      },
      orElse: () =>
          throw Exception('Invalid Params for changeMemberInsuranceDetails'),
    );
  }

  Future<MemberModel> _changeMemberInsuranceDetails(
    ChangeMemberInsuranceDetailsParams p,
  ) async {
    try {
      final content = {
        "id_customer": p.memberId,
        "id_insurance": p.idInsurance,
        "insurance_name": p.idInsurance == 0 ? p.memberNumber : null,
        "expire_date": p.expireDate,
        "member_number": p.memberNumber,
      };
      final data = serviceRequest(type: 'PP0035', content: content);
      final response = await client.post(
        url: ConstantUrls.serviceUrl,
        body: data,
        token: p.token,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = response.data;
        return MemberModel.fromJson(responseData['customer_detail']);
      } else {
        throw Exception('Server Failure');
      }
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw Exception('No Network');
      } else if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Connection Timeout');
      }
      throw Exception(e.message ?? 'Server Failure');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<MemberModel> getMemberDetail(ProfileParams params) async {
    return params.maybeMap(
      getMemberDetail: (p) async {
        return _getMemberDetail(p);
      },
      orElse: () => throw Exception('Invalid Params for getMemberDetail'),
    );
  }

  Future<MemberModel> _getMemberDetail(GetMemberDetailParams p) async {
    try {
      final data = serviceRequest(
        type: 'HMS0034',
        content: {"id_customer": p.memberId},
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
        return MemberModel.fromJson(responseData);
      } else {
        throw Exception('Server Failure');
      }
    } on DioException catch (e) {
      if (e.error is SocketException) {
        throw Exception('No Network');
      } else if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Connection Timeout');
      }
      throw Exception(e.message ?? 'Server Failure');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
