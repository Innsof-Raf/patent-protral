part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.stroeRport({required String url}) = StroeRport;
  const factory ReportEvent.clearReport() = ClearReport;
}
