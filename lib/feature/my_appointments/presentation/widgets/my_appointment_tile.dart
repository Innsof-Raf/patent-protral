import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_snack_bar.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
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
    final isCancelled = appointment.status == 'INACTV';

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: .5),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: .03),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _DoctorAvatar(imageUrl: _doctorImageUrl, size: 64),
                      const Gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    appointment.doctorName.toTitleCase(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyles.largeBoldRoboto
                                        .copyWith(
                                          color: colorScheme.onSurface,
                                          fontSize: 17,
                                        ),
                                  ),
                                ),
                                _StatusBadge(
                                  isConsulted: isConsulted,
                                  isCancelled: isCancelled,
                                ),
                              ],
                            ),
                            const Gap(4),
                            Text(
                              appointment.speciality.trim().toUpperCase(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.bodyTextInter.copyWith(
                                color: colorScheme.onSurfaceVariant.withValues(
                                  alpha: .8,
                                ),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0.5,
                              ),
                            ),
                            const Gap(2),
                            Text(
                              '${appointment.departName.toTitleCase()}${appointment.branch.isNotEmpty && appointment.branch != '0' ? ' • ${appointment.branch.toTitleCase()}' : ''}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.bodyTextInter.copyWith(
                                color: colorScheme.onSurfaceVariant.withValues(
                                  alpha: .6,
                                ),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  _AppointmentDetails(appointment: appointment),
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: colorScheme.outlineVariant.withValues(alpha: .4),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: _ActionBar(
                isConsulted: isConsulted,
                isCancelled: isCancelled,
                isCanceling: appointment.isCanceling,
                onReschedule: () => _onReschedulePressed(context),
                onCancel: () => _onCancelPressed(context),
                onBookAgain: () => _onBookAgainPressed(context),
              ),
            ),
          ],
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
      CommonSnackBar.show(context, message: AppStaticTexts.memberNotFound);
      return;
    }

    BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
    BookAppointmentScreenHelpers.createDateList();

    final selectedDate = _resolveSelectedDate();
    if (selectedDate == null) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.noAvailableDatesReschedule,
      );
      return;
    }

    BookAppointmentScreenHelpers.selectedDateNotifier.value = selectedDate;

    context.router.push(
      BookAppointmentRoute(
        doctor: Doctor(
          doctorId: appointment.doctorId,
          idDoctor: appointment.idDoctor,
          idDept: 0,
          idBusUnit: 0,
          busUnitName: appointment.busUnitName,
          doctorName: appointment.doctorName,
          departmentName: appointment.departName,
          doctorSpeciality: appointment.speciality,
          experience: '',
          branch: appointment.branch,
          knownLanguages: [],
          doctorImage: appointment.profileUrl,
          consultationFee: 0,
          onlineConsultationFee: 0,
          isOnline: false,
          doctorBio: '',
        ),
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
      CommonSnackBar.show(context, message: AppStaticTexts.memberNotFound);
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
      CommonSnackBar.show(context, message: AppStaticTexts.memberNotFound);
      return;
    }

    BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
    BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
    BookAppointmentScreenHelpers.createDateList();

    if (BookAppointmentScreenHelpers.dateList.isEmpty) {
      CommonSnackBar.show(
        context,
        message: AppStaticTexts.noAvailableDatesBooking,
      );
      return;
    }

    BookAppointmentScreenHelpers.selectedDateNotifier.value =
        BookAppointmentScreenHelpers.dateList.first;

    context.router.push(
      BookAppointmentRoute(
        doctor: Doctor(
          doctorId: appointment.doctorId,
          idDoctor: appointment.idDoctor,
          idDept: 0,
          idBusUnit: 0,
          busUnitName: appointment.busUnitName,
          doctorName: appointment.doctorName,
          departmentName: appointment.departName,
          doctorSpeciality: appointment.speciality,
          experience: '',
          branch: appointment.branch,
          knownLanguages: [],
          doctorImage: appointment.profileUrl,
          consultationFee: 0,
          onlineConsultationFee: 0,
          isOnline: false,
          doctorBio: '',
        ),
        appointmentId: 0,
      ),
    );
  }

  Member? _findMember(BuildContext context) {
    final user = context.read<UserBloc>().state.user;
    if (user == null) return null;

    final members = user.members;

    if (appointment.memberId != 0) {
      for (final member in members) {
        if (member.id == appointment.memberId) {
          return member;
        }
      }
    }

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

    if (appointmentMemberName.isEmpty ||
        appointmentMemberName.toLowerCase() == mainUserName.toLowerCase() ||
        (appointment.memberId != 0 && appointment.memberId == user.idMember)) {
      for (final member in members) {
        if (member.id == user.idMember) {
          return member;
        }
      }

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
}

class _DoctorAvatar extends StatelessWidget {
  const _DoctorAvatar({required this.imageUrl, required this.size});

  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.surfaceContainerHighest,
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .5),
          width: 1,
        ),
      ),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: CommonNetworkImage.placeholder,
          errorWidget: CommonNetworkImage.errorWidget,
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final bool isConsulted;
  final bool isCancelled;

  const _StatusBadge({required this.isConsulted, required this.isCancelled});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final color = isCancelled
        ? colorScheme.error
        : (isConsulted ? Colors.green : colorScheme.primary);

    final backgroundColor = color.withValues(alpha: 0.1);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        isCancelled
            ? 'Cancelled'
            : (isConsulted ? AppStaticTexts.done : AppStaticTexts.upcoming),
        style: AppTextStyles.bodyTextInter.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 11,
        ),
      ),
    );
  }
}

class _AppointmentDetails extends StatelessWidget {
  final MyAppointment appointment;

  const _AppointmentDetails({required this.appointment});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _DetailItem(
            icon: Icons.person_outline_rounded,
            label:
                (appointment.memberName.isEmpty
                        ? AppStaticTexts.self
                        : appointment.memberName)
                    .toTitleCase(),
            color: colorScheme.primary,
          ),
          _VerticalDivider(),
          _DetailItem(
            icon: Icons.access_time_rounded,
            label: DateFormat(
              'dd MMM, hh:mm a',
            ).format(appointment.appointmentDateTime),
            color: colorScheme.onSurfaceVariant,
          ),
          if (appointment.tokenNo.isNotEmpty && appointment.tokenNo != '0') ...[
            _VerticalDivider(),
            _DetailItem(
              icon: Icons.confirmation_number_outlined,
              label: '#${appointment.tokenNo}',
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ],
      ),
    );
  }
}

class _DetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _DetailItem({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: color),
        const Gap(4),
        Text(
          label,
          maxLines: 1,
          style: AppTextStyles.bodyTextInter.copyWith(
            color: color.withValues(alpha: 0.9),
            fontWeight: FontWeight.w600,
            fontSize: 11.5,
          ),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: Theme.of(
        context,
      ).colorScheme.outlineVariant.withValues(alpha: 0.5),
    );
  }
}

class _ActionBar extends StatelessWidget {
  final bool isConsulted;
  final bool isCancelled;
  final bool isCanceling;
  final VoidCallback onReschedule;
  final VoidCallback onCancel;
  final VoidCallback onBookAgain;

  const _ActionBar({
    required this.isConsulted,
    required this.isCancelled,
    required this.isCanceling,
    required this.onReschedule,
    required this.onCancel,
    required this.onBookAgain,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (isConsulted || isCancelled) {
      return SizedBox(
        width: double.infinity,
        child: ActiveButton(
          onPressed: onBookAgain,
          icon: const Icon(Icons.reorder_rounded, size: 18),
          height: 44,
          child: const Text(AppStaticTexts.bookAgain),
        ),
      );
    }

    return Row(
      children: [
        Expanded(
          child: ActiveOutlinedButton(
            isLoading: isCanceling,
            onPressed: onCancel,
            icon: const Icon(Icons.close_rounded, size: 18),
            height: 44,
            foregroundColor: colorScheme.error,
            borderColor: colorScheme.error.withValues(alpha: 0.3),
            child: const Text(AppStaticTexts.cancel),
          ),
        ),
        const Gap(12),
        Expanded(
          child: ActiveButton(
            onPressed: isCanceling ? null : onReschedule,
            icon: const Icon(Icons.calendar_month_rounded, size: 18),
            height: 44,
            child: const Text(AppStaticTexts.reschedule),
          ),
        ),
      ],
    );
  }
}
