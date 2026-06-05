import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../resources/constant_messages.dart';
import '../../../resources/error_model.dart';
import '../../../resources/urls.dart';
import '../models/member/member_model.dart';
import '../models/user/user_model.dart';

class MemberServices {
  static Future<Either<ErrorModel, MemberModel>> addMember(
      {required UserModel user,
      required File? profileImage,
      required String patientName,
      required String nationalId,
      required String? email,
      required String gender,
      required int? idInsurance,
      required String? memberNumber,
      required DateTime? expireDate,
      required String? otherInsuranceName,
      required DateTime dob}) async {
    try {
      var request =
          http.MultipartRequest('POST', Uri.parse(ConstantUrls.addMember));
      request.fields.addAll({
        'saveRequest':
            '{"CONTENT":"{\\"id_customer\\":0,\\"customer_name\\":\\"$patientName\\",\\"mobile_no\\":\\"${user.mobileNumber}\\",\\"national_id\\":\\"$nationalId\\",\\"email_id\\":${email != null ? '\\"$email\\"' : null},\\"dob\\":\\"$dob\\",\\"gender\\":\\"$gender\\",\\"id_insurance\\":$idInsurance,\\"member_no\\":${memberNumber != null ? '\\"$memberNumber\\"' : null},\\"expiry_dt\\":${expireDate != null ? '\\"$expireDate\\"' : null},\\"others\\":${otherInsuranceName != null ? '\\"${otherInsuranceName.toUpperCase()}\\"' : null},\\"profile_image\\":${profileImage != null ? '\\"profile.png\\"' : null}}","TYPE":"PP0018"}',
        'PathIdentifier': 'PatientProfileImage',
        'removeProfilePic': 'false'
      });

      if (profileImage != null) {
        request.files
            .add(await MultipartFile.fromPath('uploads', profileImage.path));
      }

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responses = await response.stream.bytesToString();

        final responseData = jsonDecode(responses);

        if (responseData['status'] == true) {
          return Right(MemberModel.fromJson(responseData['patient_detail']));
        } else {
          return Left(ErrorModel(
              message: 'Member alredy registerd with same national id'));
        }
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, MemberModel>> changeMemberInsuranceDetails({
    required int memberId,
    required int idInsurance,
    required String? insuranceName,
    required String memberNumber,
    required DateTime expireDate,
    required String token,
  }) async {
    try {
      final Map data = {
        "CONTENT":
            "{\"id_customer\":$memberId,\"id_insurance\":$idInsurance,\"insurance_name\":${idInsurance == 0 ? "\"$memberNumber\"" : null},\"expire_date\":\"$expireDate\",\"member_number\":\"$memberNumber\"}",
        "TYPE": "PP0035"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer $token'
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return Right(MemberModel.fromJson(responseData['customer_detail']));
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  static Future<Either<ErrorModel, MemberModel>> getMemberDetail(
      {required int memberId, required String token}) async {
    try {
      final Map data = {
        "CONTENT": "{\"id_customer\":$memberId}",
        "TYPE": "PP0034"
      };
      http.Response response = await http.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer $token'
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        return Right(MemberModel.fromJson(responseData));
      } else {
        return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
      }
    } on SocketException {
      return Left(ErrorModel(message: ConstantMessages.noNetworkErrorMessage));
    } on TimeoutException {
      return Left(ErrorModel(
          message: ConstantMessages.connectionTimeOutFailureMessage));
    } catch (e) {
      return Left(ErrorModel(message: ConstantMessages.serverFailureMessage));
    }
  }

  // static Future<Either<ErrorModel, List>> uploadMemberDocuments(
  //     {required List doucuments}) {}
}
