import 'package:freezed_annotation/freezed_annotation.dart';
import 'member_document.dart';

part 'generated/member.freezed.dart';

@freezed
sealed class Member with _$Member {
  const factory Member({
    required int id,
    required String name,
    String? mobileNo,
    String? emailId,
    required String age,
    required String nationalId,
    String? profileImage,
    required bool isInsurance,
    required bool isInsuranceExpired,
    DateTime? insuranceExpDttm,
    DateTime? dob,
    String? memberNo,
    String? insuranceName,
    int? insuranceId,
    String? gender,
    @Default([]) List<MemberDocument> memberDocs,
    @Default(false) bool isSelected,
  }) = _Member;
}
