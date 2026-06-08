import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/add_member_usecase.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/get_insurances_usecase.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/update_insurance_usecase.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/models/member/member_model.dart';
import 'package:patient_portal/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'add_member_event.dart';
part 'add_member_state.dart';
part 'generated/add_member_bloc.freezed.dart';

class AddMemberBloc extends Bloc<AddMemberEvent, AddMemberState> {
  final GetInsurancesUseCase getInsurancesUseCase;
  final AddMemberUseCase addMemberUseCase;
  final UpdateInsuranceUseCase updateInsuranceUseCase;

  AddMemberBloc({
    required this.getInsurancesUseCase,
    required this.addMemberUseCase,
    required this.updateInsuranceUseCase,
  }) : super(AddMemberState.initial()) {
    on<FetchInsurances>((event, emit) async {
      emit(
        state.copyWith(
          isFetchingInsurances: true,
          isInsuranceFetchingFailed: false,
          isInsuranceFetchingSuccess: false,
        ),
      );

      final result = await getInsurancesUseCase(
        AddMemberParams.getInsurances(token: event.token),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isFetchingInsurances: false,
            isInsuranceFetchingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (insurances) => emit(
          state.copyWith(
            isFetchingInsurances: false,
            isInsuranceFetchingSuccess: true,
            insurances: insurances,
          ),
        ),
      );
    });

    on<AddMemberAction>((event, emit) async {
      emit(
        state.copyWith(
          isMemberAdding: true,
          isMemberAddingFailed: false,
          isMemberAddingSuccess: false,
        ),
      );

      final result = await addMemberUseCase(event.params);

      result.fold(
        (failure) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (member) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingSuccess: true,
            newMember: member,
          ),
        ),
      );
    });

    on<UpdateInsuranceAction>((event, emit) async {
      emit(
        state.copyWith(
          isMemberAdding: true,
          isMemberAddingFailed: false,
          isMemberAddingSuccess: false,
        ),
      );

      final result = await updateInsuranceUseCase(event.params);

      result.fold(
        (failure) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (member) => emit(
          state.copyWith(
            isMemberAdding: false,
            isMemberAddingSuccess: true,
            newMember: member,
          ),
        ),
      );
    });
  }
}
