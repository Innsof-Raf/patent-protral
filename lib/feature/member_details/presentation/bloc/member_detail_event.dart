part of 'member_detail_bloc.dart';

@freezed
sealed class MemberDetailEvent with _$MemberDetailEvent {
  const factory MemberDetailEvent.getMemberDetail({
    required int memberId,
    required String token,
  }) = GetMemberDetail;
}
