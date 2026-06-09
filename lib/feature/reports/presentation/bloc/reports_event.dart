part of 'reports_bloc.dart';

@freezed
sealed class ReportsEvent with _$ReportsEvent {
  const factory ReportsEvent.getReports({required ReportsParams params}) =
      GetReports;

  const factory ReportsEvent.stroeRport({required ReportsParams params}) =
      StroeRport;

  const factory ReportsEvent.clearReport() = ClearReport;
}
