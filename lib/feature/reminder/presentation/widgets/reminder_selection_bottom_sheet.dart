import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder.dart';
import 'package:patient_portal/feature/reminder/domain/entities/reminder_trigger_offset.dart';
import 'package:patient_portal/feature/reminder/domain/usecases/params/schedule_appointment_reminder_params.dart';
import 'package:patient_portal/feature/reminder/presentation/cubit/reminder_cubit.dart';
import 'package:patient_portal/feature/reminder/presentation/cubit/reminder_state.dart';

class ReminderSelectionBottomSheet extends StatefulWidget {
  final MyAppointment appointment;
  final List<Reminder> activeReminders;

  const ReminderSelectionBottomSheet({
    super.key,
    required this.appointment,
    required this.activeReminders,
  });

  static Future<void> show({
    required BuildContext context,
    required MyAppointment appointment,
    required List<Reminder> activeReminders,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider.value(
        value: context.read<ReminderCubit>(),
        child: ReminderSelectionBottomSheet(
          appointment: appointment,
          activeReminders: activeReminders,
        ),
      ),
    );
  }

  @override
  State<ReminderSelectionBottomSheet> createState() =>
      _ReminderSelectionBottomSheetState();
}

class _ReminderSelectionBottomSheetState
    extends State<ReminderSelectionBottomSheet> {
  static const _presets = <ReminderTriggerOffset>[
    ReminderTriggerOffset.fifteenMinsBefore,
    ReminderTriggerOffset.thirtyMinsBefore,
    ReminderTriggerOffset.oneHourBefore,
    ReminderTriggerOffset.twoHoursBefore,
    ReminderTriggerOffset.oneDayBefore,
  ];
  static const int _maxOffsetMinutes = 10080; // 7 days

  late int _selectedMinutes;
  final TextEditingController _customController = TextEditingController();
  bool _isCustomMode = false;
  String? _customError;

  @override
  void initState() {
    super.initState();
    if (widget.activeReminders.isNotEmpty) {
      _selectedMinutes = widget.activeReminders.first.offsetMinutes;
      final matchPreset = _presets.any((p) => p.minutes == _selectedMinutes);
      if (!matchPreset) {
        _isCustomMode = true;
        _customController.text = _selectedMinutes.toString();
      }
    } else {
      _selectedMinutes = ReminderTriggerOffset.oneHourBefore.minutes;
    }
  }

  @override
  void dispose() {
    _customController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasExistingReminder = widget.activeReminders.isNotEmpty;

    return BlocConsumer<ReminderCubit, ReminderState>(
      listener: (context, state) {
        if (state.errorKey != null && state.errorKey!.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorKey!),
              backgroundColor: AppColors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          child: SafeArea(
            top: false,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom + 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        color: colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.primaryCyan.withValues(alpha: .1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.alarm_add_rounded,
                          color: AppColors.primaryCyan,
                          size: 24,
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.lang.setReminderTitle,
                              style: AppTextStyles.largeBoldRoboto.copyWith(
                                color: colorScheme.onSurface,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              widget.appointment.doctorName,
                              style: AppTextStyles.bodySmallRobotoNormal
                                  .copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  ..._presets.map(
                    (preset) => _PresetTile(
                      key: ValueKey(preset),
                      offset: preset,
                      isSelected:
                          !_isCustomMode && _selectedMinutes == preset.minutes,
                      onTap: () {
                        setState(() {
                          _isCustomMode = false;
                          _selectedMinutes = preset.minutes;
                          _customError = null;
                        });
                      },
                    ),
                  ),
                  const Gap(8),
                  InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      setState(() {
                        _isCustomMode = true;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: _isCustomMode
                            ? AppColors.primaryCyan.withValues(alpha: .08)
                            : colorScheme.surfaceContainerHighest.withValues(
                                alpha: .4,
                              ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: _isCustomMode
                              ? AppColors.primaryCyan
                              : colorScheme.outlineVariant.withValues(
                                  alpha: .4,
                                ),
                          width: _isCustomMode ? 1.5 : 1,
                        ),
                      ),
                      child: Text(
                        context.lang.reminderOffsetCustom,
                        style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                          color: _isCustomMode
                              ? AppColors.primaryCyan
                              : colorScheme.onSurface,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  if (_isCustomMode) ...[
                    const Gap(12),
                    TextField(
                      controller: _customController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: context.lang.reminderCustomHint,
                        errorText: _customError,
                        suffixText: context.lang.minutesShort,
                        prefixIcon: const Icon(Icons.timer_outlined),
                      ),
                      onChanged: (v) {
                        setState(() {
                          final parsed = int.tryParse(v);
                          if (parsed == null || parsed <= 0) {
                            _customError = context.lang.reminderInvalidDuration;
                          } else if (parsed > _maxOffsetMinutes) {
                            _customError = context.lang.reminderDurationTooLong;
                          } else {
                            _customError = null;
                            _selectedMinutes = parsed;
                          }
                        });
                      },
                    ),
                  ],
                  const Gap(24),
                  Row(
                    children: [
                      if (hasExistingReminder) ...[
                        Expanded(
                          child: OutlinedButton(
                            onPressed: state.isMutating
                                ? null
                                : () async {
                                    final navigator = Navigator.of(context);
                                    await context
                                        .read<ReminderCubit>()
                                        .cancelReminderForAppointment(
                                          appointmentId: widget.appointment.id
                                              .toString(),
                                        );
                                    if (mounted) navigator.pop();
                                  },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: AppColors.red,
                              side: const BorderSide(color: AppColors.red),
                            ),
                            child: Text(context.lang.removeReminder),
                          ),
                        ),
                        const Gap(12),
                      ],
                      Expanded(
                        child: ActiveButton(
                          onPressed: state.isMutating || _customError != null
                              ? null
                              : () async {
                                  if (_selectedMinutes <= 0) return;
                                  final cubit = context.read<ReminderCubit>();
                                  final navigator = Navigator.of(context);
                                  final params =
                                      ScheduleAppointmentReminderParams(
                                        targetId: widget.appointment.id
                                            .toString(),
                                        targetDateTime: widget
                                            .appointment
                                            .appointmentDateTime,
                                        doctorName:
                                            widget.appointment.doctorName,
                                        offsetMinutes: _selectedMinutes,
                                      );
                                  await cubit.scheduleReminder(params);
                                  if (mounted && cubit.state.errorKey == null) {
                                    navigator.pop();
                                  }
                                },
                          child: state.isMutating
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : Text(context.lang.setReminder),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PresetTile extends StatelessWidget {
  final ReminderTriggerOffset offset;
  final bool isSelected;
  final VoidCallback onTap;

  const _PresetTile({
    super.key,
    required this.offset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primaryCyan.withValues(alpha: .08)
                : colorScheme.surfaceContainerHighest.withValues(alpha: .4),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected
                  ? AppColors.primaryCyan
                  : colorScheme.outlineVariant.withValues(alpha: .4),
              width: isSelected ? 1.5 : 1,
            ),
          ),
          child: Text(
            offset.getLocalizedLabel(context),
            style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
              color: isSelected ? AppColors.primaryCyan : colorScheme.onSurface,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
