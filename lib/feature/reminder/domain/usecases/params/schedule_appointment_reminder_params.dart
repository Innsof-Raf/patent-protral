import 'package:equatable/equatable.dart';

class ScheduleAppointmentReminderParams extends Equatable {
  final String targetId;
  final DateTime targetDateTime;
  final String doctorName;
  final int offsetMinutes;

  const ScheduleAppointmentReminderParams({
    required this.targetId,
    required this.targetDateTime,
    required this.doctorName,
    required this.offsetMinutes,
  });

  @override
  List<Object?> get props => [
        targetId,
        targetDateTime,
        doctorName,
        offsetMinutes,
      ];
}
