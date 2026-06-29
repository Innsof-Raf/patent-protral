part of 'user_bloc.dart';

@freezed
sealed class UserEvent with _$UserEvent {
  const factory UserEvent.storeUserDetails({required ProfileParams params}) =
      StoreUserDetails;

  const factory UserEvent.addMember({required ProfileParams params}) =
      AddMember;

  const factory UserEvent.changememberInsuranceDetails({
    required ProfileParams params,
  }) = ChangememberInsuranceDetails;

  const factory UserEvent.changeMemberAddingSateToInitial() =
      ChangeMemberAddingSateToInitial;

  const factory UserEvent.getMemberDetail({required ProfileParams params}) =
      GetMemberDetail;

  const factory UserEvent.addMemberToLocal({required ProfileParams params}) =
      AddMemberToLocal;

  const factory UserEvent.updateMemberInLocal({required ProfileParams params}) =
      UpdateMemberInLocal;

  const factory UserEvent.deleteMembers({required List<int> memberIds}) =
      DeleteMembers;

  const factory UserEvent.logOut() = LogOut;

  const factory UserEvent.initializeUser() = InitializeUser;

  const factory UserEvent.refreshToken() = RefreshToken;

  const factory UserEvent.selectMember({required Member member}) = SelectMember;
}
