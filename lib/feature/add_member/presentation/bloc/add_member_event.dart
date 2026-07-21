part of 'add_member_bloc.dart';

@freezed
sealed class AddMemberEvent with _$AddMemberEvent {
  const factory AddMemberEvent.fetchInsurances({required String token}) =
      FetchInsurances;

  const factory AddMemberEvent.addMemberAction({
    required AddMemberParams params,
  }) = AddMemberAction;

  const factory AddMemberEvent.updateInsuranceAction({
    required AddMemberParams params,
  }) = UpdateInsuranceAction;
}
