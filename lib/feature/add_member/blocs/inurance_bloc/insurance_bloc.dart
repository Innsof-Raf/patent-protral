import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../../../../resources/common_models/insurance/insurance_model.dart';
import '../../services/insurance_services.dart';

part 'insurance_event.dart';
part 'insurance_state.dart';
part 'insurance_bloc.freezed.dart';

class InsuranceBloc extends Bloc<InsuranceEvent, InsuranceState> {
  InsuranceBloc() : super(InsuranceState.initial()) {
    on<FeatchInsurance>((event, emit) async {
      emit(state.copyWith(
          isFetchingInsurances: true,
          isInsuranceFechingSuccess: false,
          isInsuranceFecthingFailed: false));
      final Either<ErrorModel, List<InsuranceModel>> insuranceServiceOptions =
          await InsuranceServices.fetchInsuranceTypes(token: event.token);
      insuranceServiceOptions.fold(
          (error) => emit(state.copyWith(
              isFetchingInsurances: false,
              error: error,
              isInsuranceFecthingFailed: true)),
          (insuranceList) => emit(state.copyWith(
              isFetchingInsurances: false,
              isInsuranceFechingSuccess: true,
              insurances: insuranceList)));
    });
  }
}
