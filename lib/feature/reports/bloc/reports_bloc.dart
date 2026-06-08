import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/reports/services/reports_services.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../models/report_model/report_model.dart';

part 'reports_event.dart';
part 'reports_state.dart';
part 'generated/reports_bloc.freezed.dart';

class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  ReportsBloc() : super(ReportsState.initial()) {
    on<GetReports>((event, emit) async {
      emit(
        state.copyWith(
          selectedMemberId: event.memberId,
          isFetchingReports: true,
          isFetchingSuccess: false,
          isFetchingFailed: false,
        ),
      );
      final Either<ErrorModel, List<ReportModel>> reportsFetchingOptions =
          await ReportsServices.getReports(
            mobileNumber: event.mobileNumber,
            memberId: event.memberId,
            token: event.token,
          );
      reportsFetchingOptions.fold(
        (error) => emit(
          state.copyWith(
            isFetchingReports: false,
            isFetchingFailed: true,
            error: error,
          ),
        ),
        (reports) => emit(
          state.copyWith(
            isFetchingReports: false,
            isFetchingSuccess: true,
            reports: reports,
          ),
        ),
      );
    });
  }
}
