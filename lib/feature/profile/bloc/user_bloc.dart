import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../models/member/member_model.dart';
import '../models/user/user_model.dart';
import '../service/member_services.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState.initial()) {
    on<StoreUserDetails>((event, emit) {
      emit(state.copyWith(user: event.user));
    });
    on<ChangeMemberAddingSateToInitial>((event, emit) => emit(state.copyWith(
          isMemberAddingFailed: false,
          isMemberAddingSucess: false,
        )));
    on<AddMember>((event, emit) async {
      emit(state.copyWith(
        isMemberAdding: true,
        isMemberAddingFailed: false,
        isMemberAddingSucess: false,
      ));

      final Either<ErrorModel, MemberModel> memberAddingOptions =
          await MemberServices.addMember(
              user: state.user!,
              patientName: event.patientName,
              nationalId: event.nationalId,
              email: event.email,
              gender: event.gender,
              idInsurance: event.idInsurance,
              memberNumber: event.memberNumber,
              expireDate: event.expireDate,
              otherInsuranceName: event.otherInsuranceName,
              dob: event.dob,
              profileImage: event.profileImage);
      memberAddingOptions.fold(
          (error) => emit(state.copyWith(
              isMemberAdding: false,
              isMemberAddingFailed: true,
              error: error)), (newMember) {
        List<MemberModel> members = List.from(state.user!.members);
        members.add(newMember);
        return emit(state.copyWith(
            isMemberAdding: false,
            isMemberAddingSucess: true,
            user: state.user!.copyWith(members: members)));
      });
    });
    on<ChangememberInsuranceDetails>((event, emit) async {
      emit(state.copyWith(
        isMemberAdding: true,
        isMemberAddingFailed: false,
        isMemberAddingSucess: false,
      ));
      final Either<ErrorModel, MemberModel> memberInsuranceEditingOptions =
          await MemberServices.changeMemberInsuranceDetails(
              memberId: event.memberId,
              idInsurance: event.idInsurance,
              insuranceName: event.insuranceName,
              memberNumber: event.memberNumber,
              expireDate: event.expireDate,
              token: state.user!.accessToken);
      memberInsuranceEditingOptions.fold(
          (error) => emit(state.copyWith(
              isMemberAdding: false,
              isMemberAddingFailed: true,
              error: error)), (memberDetail) {
        List<MemberModel> members = List.from(state.user!.members);
        int currentMemberIndex =
            members.indexWhere((member) => member.id == event.memberId);
        members[currentMemberIndex] = memberDetail;
        return emit(state.copyWith(
            isMemberAdding: false,
            isMemberAddingSucess: true,
            user: state.user!.copyWith(members: members)));
      });
    });
    on<GetMemberDetail>((event, emit) async {
      emit(state.copyWith(
        isFetchingMemberDetail: true,
        isMemberDetailFetchingFailed: false,
        isMemberDetailFetchingSucess: false,
      ));
      final Either<ErrorModel, MemberModel> memberDetailFetchingOptions =
          await MemberServices.getMemberDetail(
              memberId: event.memberId, token: state.user!.accessToken);
      memberDetailFetchingOptions.fold(
          (error) => emit(state.copyWith(
              isFetchingMemberDetail: false,
              isMemberDetailFetchingFailed: true,
              error: error)), (memberDetail) {
        List<MemberModel> members = List.from(state.user!.members);
        final int cureentMemberIndex = members.indexWhere(
          (member) => member.id == event.memberId,
        );
        members[cureentMemberIndex] = memberDetail;
        return emit(state.copyWith(
            isFetchingMemberDetail: false,
            isMemberDetailFetchingSucess: true,
            user: state.user!.copyWith(members: members)));
      });
    });
    on<LogOut>((event, emit) {
      emit(state.copyWith(user: null));
    });
  }
}
