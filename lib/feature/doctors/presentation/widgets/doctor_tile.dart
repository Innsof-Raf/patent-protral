import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_info_widgets.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key, required this.doctor});

  final Doctor doctor;

  static String? normalizedBio(String? bio) {
    if (bio == null) return null;

    final normalized = bio.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized.isEmpty ? null : normalized;
  }

  void _onTileTap(BuildContext context) {
    BookAppointmentScreenHelpers.createDateList();
    BookAppointmentScreenHelpers.selectedDateNotifier.value =
        BookAppointmentScreenHelpers.dateList[0];
    context.router.push(BookAppointmentRoute(doctor: doctor, appointmentId: 0));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bio = normalizedBio(doctor.doctorBio);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => _onTileTap(context),
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: .5),
            ),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColorUltraLight,
                blurRadius: 12,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _DoctorAvatar(doctor: doctor, size: 80),
                            const Gap(16),
                            Expanded(child: _DoctorDetails(doctor: doctor)),
                          ],
                        ),
                        if (doctor.branch.trim().isNotEmpty &&
                            doctor.branch != '0') ...[
                          const Gap(12),
                          _LocationChip(branch: doctor.branch.trim()),
                        ],
                      ],
                    ),
                  ),
                  if (doctor.isOnline ||
                      (doctor.availability.isNotEmpty &&
                          doctor.availability.toLowerCase() !=
                              'not available')) ...[
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: theme.colorScheme.outlineVariant.withValues(
                        alpha: .4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          if (doctor.isOnline) ...[
                            _AvailabilitySlot(
                              icon: Icons.videocam_rounded,
                              title: context.lang.videoConsultation,
                              subtitle: doctor.availability.isNotEmpty
                                  ? doctor.availability
                                  : context.lang.available,
                              color: AppColors.iconBlue,
                              backgroundColor: AppColors.iconBlueBg,
                            ),
                          ],
                          if (doctor.availability.isNotEmpty &&
                              doctor.availability.toLowerCase() !=
                                  'not available') ...[
                            if (doctor.isOnline) const Gap(8),
                            _AvailabilitySlot(
                              icon: Icons.business_rounded,
                              title: context.lang.inPersonConsultation,
                              subtitle: doctor.availability,
                              color: AppColors.iconGreen,
                              backgroundColor: AppColors.iconGreenBg,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ],
              ),
              if (bio != null)
                PositionedDirectional(
                  top: 8,
                  end: 8,
                  child: DoctorInfoButton(
                    doctorName: doctor.doctorName,
                    bio: bio,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DoctorAvatar extends StatelessWidget {
  const _DoctorAvatar({required this.doctor, required this.size});

  final Doctor doctor;
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
          imageUrl:
              '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
          fit: BoxFit.cover,
          placeholder: CommonNetworkImage.placeholder,
          errorWidget: CommonNetworkImage.errorWidget,
        ),
      ),
    );
  }
}

class _DoctorDetails extends StatelessWidget {
  const _DoctorDetails({required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final List<String> metaItems = [];
    if (doctor.experience.trim().isNotEmpty && doctor.experience != '0') {
      metaItems.add(
        '${context.lang.experiencePrefix} ${doctor.experience}${context.lang.yearsExperience}',
      );
    }
    if (doctor.consultationFee > 0) {
      metaItems.add(
        '${context.lang.feePrefix} ${context.lang.qar} ${doctor.consultationFee.toStringAsFixed(0)}',
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          doctor.doctorName.trim().toTitleCase(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.largeBoldRoboto.copyWith(
            color: theme.colorScheme.onSurface,
            fontSize: 18,
            height: 1.1,
          ),
        ),
        const Gap(4),
        Text(
          doctor.doctorSpeciality.trim().toUpperCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyTextInter.copyWith(
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: .8),
            fontWeight: FontWeight.w600,
            fontSize: 13,
            letterSpacing: 0.5,
          ),
        ),
        const Gap(2),
        Text(
          doctor.departmentName.trim().toTitleCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyTextInter.copyWith(
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: .7),
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
        if (metaItems.isNotEmpty) ...[
          const Gap(4),
          Text(
            metaItems.join(' | '),
            style: AppTextStyles.bodyTextInter.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: .6),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
        if (doctor.knownLanguages.isNotEmpty) ...[
          const Gap(2),
          Text(
            '${context.lang.speaksPrefix} ${doctor.knownLanguages.join(', ')}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyTextInter.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: .6),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ],
    );
  }
}

class _LocationChip extends StatelessWidget {
  const _LocationChip({required this.branch});

  final String branch;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.iconBlueBg.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.location_on_rounded,
            size: 14,
            color: AppColors.iconRed,
          ),
          const Gap(6),
          Flexible(
            child: Text(
              branch,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyTextInter.copyWith(
                color: theme.colorScheme.onSurfaceVariant.withValues(alpha: .9),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AvailabilitySlot extends StatelessWidget {
  const _AvailabilitySlot({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.backgroundColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color.withValues(alpha: .15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: color),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.bodyTextInter.copyWith(
                    color: color.withValues(alpha: .7),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(2),
                Text(
                  subtitle,
                  style: AppTextStyles.bodyTextInter.copyWith(
                    color: color,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
