import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/resources/urls.dart';

abstract class ProfileRemoteDataSource {
  Future<MemberModel> addMember(ProfileParams params);
  Future<MemberModel> changeMemberInsuranceDetails(ProfileParams params);
  Future<MemberModel> getMemberDetail(ProfileParams params);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
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
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(ConstantUrls.addMember),
      );
      request.fields.addAll({
        'saveRequest':
            '{"CONTENT":"{\\"id_customer\\":0,\\"customer_name\\":\\"${p.patientName}\\",\\"mobile_no\\":\\"${p.user!.mobileNumber}\\",\\"national_id\\":\\"${p.nationalId}\\",\\"email_id\\":${p.email != null ? '\\"${p.email}\\"' : null},\\"dob\\":\\"${p.dob}\\",\\"gender\\":\\"${p.gender}\\",\\"id_insurance\\":${p.idInsurance},\\"member_no\\":${p.memberNumber != null ? '\\"${p.memberNumber}\\"' : null},\\"expiry_dt\\":${p.expireDate != null ? '\\"${p.expireDate}\\"' : null},\\"others\\":${p.otherInsuranceName != null ? '\\"${p.otherInsuranceName!.toUpperCase()}\\"' : null},\\"profile_image\\":${p.profileImage != null ? '\\"profile.png\\"' : null}}","TYPE":"PP0018"}',
        'PathIdentifier': 'PatientProfileImage',
        'removeProfilePic': 'false',
      });

      if (p.profileImage != null) {
        request.files.add(
          await MultipartFile.fromPath('uploads', p.profileImage!.path),
        );
      }

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responses = await response.stream.bytesToString();

        final responseData = jsonDecode(responses);

        if (responseData['status'] == true) {
          return MemberModel.fromJson(responseData['patient_detail']);
        } else {
          throw Exception('Member alredy registerd with same national id');
        }
      } else {
        throw Exception('Server Failure');
      }
    } on SocketException {
      throw Exception('No Network');
    } on TimeoutException {
      throw Exception('Connection Timeout');
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
      final Map data = {
        "CONTENT":
            "{\"id_customer\":${p.memberId},\"id_insurance\":${p.idInsurance},\"insurance_name\":${p.idInsurance == 0 ? "\"${p.memberNumber}\"" : null},\"expire_date\":\"${p.expireDate}\",\"member_number\":\"${p.memberNumber}\"}",
        "TYPE": "PP0035",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${p.token!}',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return MemberModel.fromJson(responseData['customer_detail']);
      } else {
        throw Exception('Server Failure');
      }
    } on SocketException {
      throw Exception('No Network');
    } on TimeoutException {
      throw Exception('Connection Timeout');
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
      final Map data = {
        "CONTENT": "{\"id_customer\":${p.memberId}}",
        "TYPE": "PP0034",
      };
      http.Response response = await http.post(
        Uri.parse(ConstantUrls.serviceUrl),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json',
          'Authorization': 'Bearer ${p.token!}',
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return MemberModel.fromJson(responseData);
      } else {
        throw Exception('Server Failure');
      }
    } on SocketException {
      throw Exception('No Network');
    } on TimeoutException {
      throw Exception('Connection Timeout');
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // static Future<Either<ErrorModel, List>> uploadMemberDocuments(
  //     {required List doucuments}) {}
}
