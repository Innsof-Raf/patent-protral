part of 'member_detail_bloc.dart';

@freezed
class MemberDetailEvent with _$MemberDetailEvent {
  const factory MemberDetailEvent.getMemberDetails(
      {required int memberId, required String token}) = GetMemberDetails;
}
