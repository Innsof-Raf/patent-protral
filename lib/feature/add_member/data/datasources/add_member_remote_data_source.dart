import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
  final http.Client client;

  AddMemberRemoteDataSourceImpl({required this.client});

  @override
  Future<List<InsuranceModel>> getInsuranceTypes({
    required String token,
  }) async {
    final data = {"TYPE": "PP0024"};

    final response = await client.post(
      Uri.parse(ConstantUrls.serviceUrl),
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> responseData = jsonDecode(response.body);
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
        var request = http.MultipartRequest(
          'POST',
          Uri.parse(ConstantUrls.addMember),
        );

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

        request.fields.addAll({
          'saveRequest': jsonEncode({
            "CONTENT": jsonEncode(contentMap),
            "TYPE": "PP0018",
          }),
          'PathIdentifier': 'PatientProfileImage',
          'removeProfilePic': 'false',
        });

        if (p.profileImage != null) {
          request.files.add(
            await http.MultipartFile.fromPath('uploads', p.profileImage!.path),
          );
        }

        http.StreamedResponse response = await request.send();

        if (response.statusCode == 200) {
          final responses = await response.stream.bytesToString();
          final responseData = jsonDecode(responses);

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
        final Map data = {
          "CONTENT": jsonEncode({
            "id_customer": p.memberId,
            "id_insurance": p.idInsurance,
            "insurance_name": p.idInsurance == 0 ? p.insuranceName : null,
            "expire_date": p.expireDate.toString(),
            "member_number": p.memberNumber,
          }),
          "TYPE": "PP0035",
        };
        http.Response response = await client.post(
          Uri.parse(ConstantUrls.serviceUrl),
          body: jsonEncode(data),
          headers: {
            'Content-type': 'application/json',
            'Authorization': 'Bearer ${p.token}',
          },
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final Map<String, dynamic> responseData = jsonDecode(response.body);
          return MemberModel.fromJson(responseData['customer_detail']);
        } else {
          throw Exception('Server Failure');
        }
      },
      orElse: () => throw Exception('Invalid Params for updateInsurance'),
    );
  }
}
