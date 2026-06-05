part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.storeUserDetails({required UserModel user}) =
      StoreUserDetails;
  const factory UserEvent.addMember(
      {required String patientName,
      required String nationalId,
      String? email,
      required String gender,
      required DateTime dob,
      int? idInsurance,
      String? memberNumber,
      File? profileImage,
      DateTime? expireDate,
      String? otherInsuranceName}) = AddMember;
  const factory UserEvent.changememberInsuranceDetails(
      {required int idInsurance,
      required int memberId,
      required String? insuranceName,
      required String memberNumber,
      required DateTime expireDate}) = ChangememberInsuranceDetails;
  const factory UserEvent.changeMemberAddingSateToInitial() =
      ChangeMemberAddingSateToInitial;
  const factory UserEvent.getMemberDetail({required int memberId}) =
      GetMemberDetail;

  const factory UserEvent.logOut() = LogOut;
}
