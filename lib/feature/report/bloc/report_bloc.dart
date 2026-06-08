import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/report/services/report_services.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'report_bloc.freezed.dart';
part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc() : super(ReportState.initial()) {
    on<StroeRport>((event, emit) async {
      emit(
        state.copyWith(
          isRepoertSaving: true,
          isReportSavingFailed: false,
          isReportSavingSucces: false,
        ),
      );
      final Either<ErrorModel, Uint8List> reportSavingResponses =
          await ReportServices.downloadReport(url: event.url);
      reportSavingResponses.fold(
        (error) => emit(
          state.copyWith(
            isRepoertSaving: false,
            isReportSavingFailed: true,
            error: error,
          ),
        ),
        (file) => emit(
          state.copyWith(
            isRepoertSaving: false,
            isReportSavingSucces: true,
            report: file,
          ),
        ),
      );
    });
    on((event, emit) {
      emit(state.copyWith(report: null));
    });
  }
}
