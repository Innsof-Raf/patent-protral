import 'package:equatable/equatable.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';

enum ReminderStatus { initial, loading, ready, failure }

class ReminderState extends Equatable {
  const ReminderState({
    this.status = ReminderStatus.initial,
    this.remindersByTarget = const {},
    this.errorKey,
    this.isMutating = false,
  });

  final ReminderStatus status;
  final Map<String, List<Reminder>> remindersByTarget;
  final String? errorKey;
  final bool isMutating;

  List<Reminder> getRemindersFor(String targetId) =>
      remindersByTarget[targetId] ?? [];

  /// O(1) map lookup.
  bool hasReminderFor(String targetId) =>
      remindersByTarget[targetId]?.isNotEmpty ?? false;

  ReminderState copyWith({
    ReminderStatus? status,
    Map<String, List<Reminder>>? remindersByTarget,
    String? errorKey,
    bool? isMutating,
  }) {
    return ReminderState(
      status: status ?? this.status,
      remindersByTarget: remindersByTarget ?? this.remindersByTarget,
      errorKey: errorKey,
      isMutating: isMutating ?? this.isMutating,
    );
  }

  @override
  List<Object?> get props => [status, remindersByTarget, errorKey, isMutating];
}
