part of 'reports_bloc.dart';

@freezed
class ReportsEvent with _$ReportsEvent {
  const factory ReportsEvent.getReports(
      {required int memberId,
      required String token,
      required String mobileNumber}) = GetReports;
}
