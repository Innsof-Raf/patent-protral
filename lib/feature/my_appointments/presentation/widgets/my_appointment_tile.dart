import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/helpers.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/helpers/my_appointments_snackbar.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

import 'cancel_booking_popup.dart';

class MyAppointmentTile extends StatelessWidget {
  final bool isConsulted;
  final MyAppointment appointment;

  const MyAppointmentTile({
    super.key,
    required this.appointment,
    required this.isConsulted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _DoctorImage(imageUrl: _doctorImageUrl),
                    const Gap(14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appointment.doctorName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.2,
                            ),
                          ),
                          const Gap(2),
                          Text(
                            appointment.departName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _StatusBadge(
                      isConsulted: isConsulted,
                      status: appointment.status,
                    ),
                  ],
                ),
                const Gap(16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withValues(
                      alpha: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        size: 16,
                        color: colorScheme.primary,
                      ),
                      const Gap(8),
                      Expanded(
                        child: Text(
                          appointment.memberName.isEmpty
                              ? AppStaticTexts.self
                              : appointment.memberName,
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 12,
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        color: colorScheme.outlineVariant,
                      ),
                      Icon(
                        Icons.access_time_rounded,
                        size: 16,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      const Gap(6),
                      Text(
                        DateFormat(
                          'dd MMM, hh:mm a',
                        ).format(appointment.appointmentDateTime),
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                _ActionBar(
                  isConsulted: isConsulted,
                  status: appointment.status,
                  isCanceling: appointment.isCanceling,
                  onReschedule: () => _onReschedulePressed(context),
                  onCancel: () => _onCancelPressed(context),
                  onBookAgain: () => _onBookAgainPressed(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String get _doctorImageUrl {
    if (appointment.profileUrl.startsWith('http')) {
      return appointment.profileUrl;
    }
    return '${ConstantUrls.doctorImageUrl}/${appointment.idDoctor}/${appointment.profileUrl}';
  }

  void _onReschedulePressed(BuildContext context) {
    if (appointment.isCanceling) return;

    final member = _findMember(context);
    if (member == null) {
      _showMessage(context, AppStaticTexts.memberNotFound);
      return;
    }

    BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
    BookAppointmentScreenHelpers.createDateList();

    final selectedDate = _resolveSelectedDate();
    if (selectedDate == null) {
      _showMessage(context, AppStaticTexts.noAvailableDatesReschedule);
      return;
    }

    BookAppointmentScreenHelpers.selectedDateNotifier.value = selectedDate;

    context.router.push(
      BookAppointmentRoute(
        doctorName: appointment.doctorName,
        idDoctor: appointment.idDoctor,
        doctorImage: _doctorImageUrl,
        appointmentId: appointment.id,
      ),
    );
  }

  void _onCancelPressed(BuildContext context) {
    final isAnotherCancellationRunning = context
        .read<MyAppointmentsBloc>()
        .state
        .myAppointments
        .any((appointment) => appointment.isCanceling);

    if (isAnotherCancellationRunning) return;

    final member = _findMember(context);
    if (member == null) {
      _showMessage(context, AppStaticTexts.memberNotFound);
      return;
    }

    showGeneralDialog(
      context: context,
      transitionDuration: const Duration(milliseconds: 220),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SizedBox.shrink();
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) =>
          Transform.scale(
            scale: Curves.easeOutBack.transform(animation.value),
            child: CancelBookingPopUp(
              appointmentDateTime: appointment.appointmentDateTime,
              appointmentId: appointment.id,
              doctorImage: _doctorImageUrl,
              doctorName: appointment.doctorName,
              member: member,
            ),
          ),
    );
  }

  void _onBookAgainPressed(BuildContext context) {
    final member = _findMember(context);
    if (member == null) {
      _showMessage(context, AppStaticTexts.memberNotFound);
      return;
    }

    BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
    BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
    BookAppointmentScreenHelpers.createDateList();

    if (BookAppointmentScreenHelpers.dateList.isEmpty) {
      _showMessage(context, AppStaticTexts.noAvailableDatesBooking);
      return;
    }

    BookAppointmentScreenHelpers.selectedDateNotifier.value =
        BookAppointmentScreenHelpers.dateList.first;

    context.router.push(
      BookAppointmentRoute(
        doctorName: appointment.doctorName,
        idDoctor: appointment.idDoctor,
        doctorImage: _doctorImageUrl,
        appointmentId: 0,
      ),
    );
  }

  Member? _findMember(BuildContext context) {
    final user = context.read<UserBloc>().state.user;
    if (user == null) return null;

    final members = user.members;

    // 1. Try to find by ID matching
    if (appointment.memberId != 0) {
      for (final member in members) {
        if (member.id == appointment.memberId) {
          return member;
        }
      }
    }

    // 2. Try to find by name matching (fallback if IDs differ between services)
    final appointmentMemberName = appointment.memberName.trim();
    final mainUserName = '${user.firstName} ${user.lastName}'.trim();

    final targetName = appointmentMemberName.isEmpty
        ? mainUserName
        : appointmentMemberName;

    for (final member in members) {
      if (member.name.trim().toLowerCase() == targetName.toLowerCase()) {
        return member;
      }
    }

    // 3. Fallback for "Self"
    if (appointmentMemberName.isEmpty ||
        appointmentMemberName.toLowerCase() == mainUserName.toLowerCase() ||
        (appointment.memberId != 0 && appointment.memberId == user.idMember)) {
      for (final member in members) {
        if (member.id == user.idMember) {
          return member;
        }
      }

      // If still not found, return a synthetic member for the primary user
      return Member(
        id: appointment.memberId != 0 ? appointment.memberId : user.idMember,
        name: mainUserName,
        age: '',
        nationalId: '',
        isInsurance: false,
        isInsuranceExpired: false,
        mobileNo: user.mobileNumber,
        emailId: user.emailId,
      );
    }

    return null;
  }

  DateTime? _resolveSelectedDate() {
    final dateList = BookAppointmentScreenHelpers.dateList;
    if (dateList.isEmpty) {
      return null;
    }

    for (final date in dateList) {
      if (date.year == appointment.appointmentDateTime.year &&
          date.month == appointment.appointmentDateTime.month &&
          date.day == appointment.appointmentDateTime.day) {
        return date;
      }
    }

    return dateList.first;
  }

  void _showMessage(BuildContext context, String message) {
    showMyAppointmentsSnackBar(context, message: message);
  }
}

class _DoctorImage extends StatelessWidget {
  final String imageUrl;

  const _DoctorImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: 64,
          height: 64,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              return AppHelpers.imageLoadingIndicator(
                context,
                child,
                loadingProgress,
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return ColoredBox(
                color: colorScheme.surfaceContainerHighest,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(
                    Assets.images.doctorImageLoadingFailedImage.path,
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final bool isConsulted;
  final String status;

  const _StatusBadge({required this.isConsulted, required this.status});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bool isCancelled = status == 'INACTV';

    final color = isCancelled
        ? colorScheme.error
        : (isConsulted ? Colors.green : colorScheme.primary);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const Gap(8),
          Text(
            isCancelled
                ? 'Cancelled'
                : (isConsulted ? AppStaticTexts.done : AppStaticTexts.upcoming),
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  final bool isConsulted;
  final String status;
  final bool isCanceling;
  final VoidCallback onReschedule;
  final VoidCallback onCancel;
  final VoidCallback onBookAgain;

  const _ActionBar({
    required this.isConsulted,
    required this.status,
    required this.isCanceling,
    required this.onReschedule,
    required this.onCancel,
    required this.onBookAgain,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bool isCancelled = status == 'INACTV';

    if (isConsulted || isCancelled) {
      return SizedBox(
        width: double.infinity,
        child: FilledButton.icon(
          onPressed: onBookAgain,
          icon: const Icon(Icons.reorder_rounded, size: 18),
          label: const Text(AppStaticTexts.bookAgain),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: isCanceling ? null : onCancel,
            icon: isCanceling
                ? const SizedBox(
                    width: 14,
                    height: 14,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.close_rounded, size: 18),
            label: const Text(AppStaticTexts.cancel),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              side: BorderSide(color: colorScheme.error.withValues(alpha: 0.5)),
              foregroundColor: colorScheme.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: FilledButton.icon(
            onPressed: isCanceling ? null : onReschedule,
            icon: const Icon(Icons.calendar_month_rounded, size: 18),
            label: const Text(AppStaticTexts.reschedule),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
