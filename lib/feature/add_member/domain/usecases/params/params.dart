import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'generated/params.freezed.dart';
part 'generated/params.g.dart';

@Freezed(toJson: true, fromJson: false)
sealed class AddMemberParams with _$AddMemberParams {
  const factory AddMemberParams.getInsurances({
    @JsonKey(includeToJson: false) required String token,
  }) = _GetInsurancesParams;

  const factory AddMemberParams.addMember({
    @JsonKey(includeToJson: false) required String accessToken,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
    @JsonKey(name: 'customer_name') required String patientName,
    @JsonKey(name: 'national_id') required String nationalId,
    required String gender,
    required DateTime dob,
    String? email,
    @JsonKey(includeToJson: false, includeFromJson: false) File? profileImage,
    @JsonKey(name: 'id_insurance') int? idInsurance,
    @JsonKey(name: 'member_no') String? memberNumber,
    @JsonKey(name: 'expiry_dt') DateTime? expireDate,
    @JsonKey(name: 'others') String? otherInsuranceName,
    @Default(0) @JsonKey(name: 'id_customer') int idCustomer,
    @Default('New') @JsonKey(name: 'customer_id') String customerId,
    @Default(4) @JsonKey(name: 'id_setid') int idSetid,
    @Default('ACTIVE') @JsonKey(name: 'customer_status') String customerStatus,
    @Default('PATIENT') @JsonKey(name: 'customer_type') String customerType,
  }) = _AddMemberAddMemberParams;

  const factory AddMemberParams.updateInsurance({
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'id_insurance') required int idInsurance,
    @JsonKey(name: 'insurance_name') required String? insuranceName,
    @JsonKey(name: 'member_number') required String memberNumber,
    @JsonKey(name: 'expire_date') required DateTime expireDate,
    @JsonKey(includeToJson: false) required String token,
  }) = _AddMemberUpdateInsuranceParams;
}
