part of 'reports_bloc.dart';

@freezed
sealed class ReportsEvent with _$ReportsEvent {
  const factory ReportsEvent.getReports({required ReportsParams params}) =
      GetReports;

  const factory ReportsEvent.getPrescriptions({required ReportsParams params}) =
      GetPrescriptions;

  const factory ReportsEvent.storeReport({required ReportsParams params}) =
      StoreReport;

  const factory ReportsEvent.clearReport() = ClearReport;
}
