import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/domain/usecases/add_profile_member_usecase.dart';
import 'package:patient_portal/feature/profile/domain/usecases/change_member_insurance_details_usecase.dart';
import 'package:patient_portal/feature/profile/domain/usecases/get_member_detail_usecase.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

part 'generated/user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AddProfileMemberUseCase addProfileMemberUseCase;
  final ChangeMemberInsuranceDetailsUseCase changeMemberInsuranceDetailsUseCase;
  final GetMemberDetailUseCase getMemberDetailUseCase;

  UserBloc({
    required this.addProfileMemberUseCase,
    required this.changeMemberInsuranceDetailsUseCase,
    required this.getMemberDetailUseCase,
  }) : super(UserState.initial()) {
    on<StoreUserDetails>((event, emit) {
      emit(state.copyWith(user: event.params.user));
    });
    on<ChangeMemberAddingSateToInitial>(
      (event, emit) => emit(
        state.copyWith(
          isMemberAddingFailed: false,
          isMemberAddingSucess: false,
        ),
      ),
    );
    on<AddMember>((event, emit) async {
      emit(
        state.copyWith(
          isMemberAdding: true,
          isMemberAddingFailed: false,
          isMemberAddingSucess: false,
        ),
      );

      final Either<Failure, Member> memberAddingOptions =
          await addProfileMemberUseCase(
            event.params.copyWithAddUser(state.user!),
          );
      memberAddingOptions.fold(
        (error) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingFailed: true,
            error: ErrorModel(message: error.message),
          ),
        ),
        (newMember) {
          final List<Member> members = List.from(state.user!.members);
          final currentMemberIndex = members.indexWhere(
            (member) => member.id == newMember.id,
          );
          if (currentMemberIndex == -1) {
            members.add(newMember);
          } else {
            members[currentMemberIndex] = newMember;
          }
          return emit(
            state.copyWith(
              isMemberAdding: false,
              isMemberAddingSucess: true,
              user: state.user!.copyWith(members: members),
            ),
          );
        },
      );
    });
    on<ChangememberInsuranceDetails>((event, emit) async {
      emit(
        state.copyWith(
          isMemberAdding: true,
          isMemberAddingFailed: false,
          isMemberAddingSucess: false,
        ),
      );
      final Either<Failure, Member> memberInsuranceEditingOptions =
          await changeMemberInsuranceDetailsUseCase(
            event.params.copyWithToken(state.user!.accessToken),
          );
      memberInsuranceEditingOptions.fold(
        (error) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingFailed: true,
            error: ErrorModel(message: error.message),
          ),
        ),
        (memberDetail) {
          final List<Member> members = List.from(state.user!.members);
          final int currentMemberIndex = members.indexWhere(
            (member) => member.id == event.params.memberId,
          );
          members[currentMemberIndex] = memberDetail;
          return emit(
            state.copyWith(
              isMemberAdding: false,
              isMemberAddingSucess: true,
              user: state.user!.copyWith(members: members),
            ),
          );
        },
      );
    });
    on<GetMemberDetail>((event, emit) async {
      emit(
        state.copyWith(
          isFetchingMemberDetail: true,
          isMemberDetailFetchingFailed: false,
          isMemberDetailFetchingSucess: false,
        ),
      );
      final Either<Failure, Member> memberDetailFetchingOptions =
          await getMemberDetailUseCase(
            event.params.copyWithToken(state.user!.accessToken),
          );
      memberDetailFetchingOptions.fold(
        (error) => emit(
          state.copyWith(
            isFetchingMemberDetail: false,
            isMemberDetailFetchingFailed: true,
            error: ErrorModel(message: error.message),
          ),
        ),
        (memberDetail) {
          final List<Member> members = List.from(state.user!.members);
          final int cureentMemberIndex = members.indexWhere(
            (member) => member.id == event.params.memberId,
          );
          members[cureentMemberIndex] = memberDetail;
          return emit(
            state.copyWith(
              isFetchingMemberDetail: false,
              isMemberDetailFetchingSucess: true,
              user: state.user!.copyWith(members: members),
            ),
          );
        },
      );
    });
    on<AddMemberToLocal>((event, emit) {
      if (state.user != null) {
        final members = List<Member>.from(state.user!.members)
          ..add(event.params.member);
        emit(state.copyWith(user: state.user!.copyWith(members: members)));
      }
    });
    on<UpdateMemberInLocal>((event, emit) {
      if (state.user != null) {
        final members = state.user!.members
            .map(
              (m) => m.id == event.params.member.id ? event.params.member : m,
            )
            .toList();
        emit(state.copyWith(user: state.user!.copyWith(members: members)));
      }
    });
    on<LogOut>((event, emit) {
      emit(state.copyWith(user: null));
    });
  }
}

extension _ProfileParamsX on ProfileParams {
  ProfileParams copyWithAddUser(User user) {
    return maybeMap(
      addMember: (p) => ProfileParams.addMember(
        user: user,
        patientName: p.patientName,
        nationalId: p.nationalId,
        email: p.email,
        mobileNumber: p.mobileNumber,
        gender: p.gender,
        dob: p.dob,
        idInsurance: p.idInsurance,
        memberNumber: p.memberNumber,
        profileImage: p.profileImage,
        expireDate: p.expireDate,
        otherInsuranceName: p.otherInsuranceName,
      ),
      orElse: () => throw Exception('Invalid add member params'),
    );
  }

  ProfileParams copyWithToken(String token) {
    return maybeMap(
      changeMemberInsuranceDetails: (p) =>
          ProfileParams.changeMemberInsuranceDetails(
            token: token,
            idInsurance: p.idInsurance,
            memberId: p.memberId,
            insuranceName: p.insuranceName,
            memberNumber: p.memberNumber,
            expireDate: p.expireDate,
          ),
      getMemberDetail: (p) =>
          ProfileParams.getMemberDetail(memberId: p.memberId, token: token),
      orElse: () => throw Exception('Invalid token params'),
    );
  }

  User get user => maybeWhen(
    storeUserDetails: (user) => user,
    orElse: () => throw Exception('Invalid user params'),
  );

  int get memberId => maybeWhen(
    changeMemberInsuranceDetails:
        (
          token,
          idInsurance,
          memberId,
          insuranceName,
          memberNumber,
          expireDate,
        ) => memberId,
    getMemberDetail: (memberId, token) => memberId,
    orElse: () => throw Exception('Invalid member id params'),
  );

  Member get member => maybeWhen(
    addMemberToLocal: (member) => member,
    updateMemberInLocal: (member) => member,
    orElse: () => throw Exception('Invalid member params'),
  );
}
