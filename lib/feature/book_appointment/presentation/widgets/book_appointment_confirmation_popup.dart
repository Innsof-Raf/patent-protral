import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class BookAppointmentConfirmationPopUp extends StatelessWidget {
  final String title;
  final DateTime appointmentDateTime;
  final int appointmentId;
  final String doctorName;
  final int idDoctor;
  final String doctorImage;
  final Member member;

  const BookAppointmentConfirmationPopUp({
    super.key,
    required this.title,
    required this.appointmentDateTime,
    required this.member,
    required this.appointmentId,
    required this.doctorName,
    required this.idDoctor,
    required this.doctorImage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    appointmentId == 0
                        ? Icons.event_available_rounded
                        : Icons.update_rounded,
                    color: colorScheme.primary,
                    size: 24,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.surfaceContainerHighest
                        .withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
            const Gap(20),
            Text(
              title,
              style: AppTextStyles.extraLargeRobotoBold.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
              ),
            ),
            const Gap(8),
            Text(
              appointmentId == 0
                  ? 'Please review the appointment details before confirming.'
                  : 'Please review the updated slot details before confirming.',
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            ),
            const Gap(24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.3,
                ),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: colorScheme.outlineVariant.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              size: 18,
                              color: colorScheme.primary,
                            ),
                            const Gap(10),
                            Text(
                              DateFormat(
                                'dd MMM yyyy',
                              ).format(appointmentDateTime),
                              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                                fontWeight: FontWeight.w800,
                                color: colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              size: 18,
                              color: colorScheme.primary,
                            ),
                            const Gap(10),
                            Text(
                              DateFormat.jm().format(appointmentDateTime),
                              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                                fontWeight: FontWeight.w800,
                                color: colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: _UserMiniProfile(
                          name: doctorName,
                          imageUrl: doctorImage,
                          label: AppStaticTexts.doctor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: colorScheme.outlineVariant,
                          size: 20,
                        ),
                      ),
                      Expanded(
                        child: _UserMiniProfile(
                          name:
                              (member.name.trim().isEmpty
                                      ? AppStaticTexts.unknown
                                      : member.name)
                                  .toTitleCase(),
                          imageUrl: member.profileImage == null
                              ? null
                              : '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}',
                          label: AppStaticTexts.patient,
                          fallbackText: member.name.trim().isEmpty
                              ? 'U'
                              : member.name.trim()[0],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(28),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(AppStaticTexts.cancel),
                  ),
                ),
                const Gap(12),
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      if (appointmentId == 0) {
                        context.read<BookAppointmentBloc>().add(
                          BookNewAppointment(
                            appointmentDateTime: appointmentDateTime,
                            idDoctor: idDoctor,
                            idMember: member.id,
                            mobileNo: context
                                .read<UserBloc>()
                                .state
                                .user!
                                .mobileNumber,
                            token: context
                                .read<UserBloc>()
                                .state
                                .user!
                                .accessToken,
                          ),
                        );
                      } else {
                        context.read<BookAppointmentBloc>().add(
                          RescheduleAppointment(
                            idAppointment: appointmentId,
                            appointmentDateTime: appointmentDateTime,
                            token: context
                                .read<UserBloc>()
                                .state
                                .user!
                                .accessToken,
                          ),
                        );
                      }
                      Navigator.pop(context);
                    },
                    child: const Text(AppStaticTexts.confirm),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _UserMiniProfile extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final String label;
  final String? fallbackText;

  const _UserMiniProfile({
    required this.name,
    this.imageUrl,
    required this.label,
    this.fallbackText,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: colorScheme.primary.withValues(alpha: 0.2),
              width: 2,
            ),
          ),
          child: CircleAvatar(
            radius: 32,
            backgroundColor: colorScheme.primaryContainer,
            child: ClipOval(
              child: SizedBox(
                width: 64,
                height: 64,
                child: imageUrl == null
                    ? _FallbackAvatar(
                        text: fallbackText ?? (name.isNotEmpty ? name[0] : 'U'),
                        backgroundColor: colorScheme.primaryContainer,
                        foregroundColor: colorScheme.onPrimaryContainer,
                      )
                    : CachedNetworkImage(
                        imageUrl: imageUrl!,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => _FallbackAvatar(
                          text:
                              fallbackText ?? (name.isNotEmpty ? name[0] : 'U'),
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          foregroundColor: colorScheme.onSurfaceVariant,
                          showImageErrorIcon: true,
                        ),
                      ),
              ),
            ),
          ),
        ),
        const Gap(12),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppTextStyles.largeSemiBoldRoboto.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.2,
          ),
        ),
        const Gap(4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            style: AppTextStyles.bodyTextRoboto.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}

class _FallbackAvatar extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool showImageErrorIcon;

  const _FallbackAvatar({
    required this.text,
    required this.backgroundColor,
    required this.foregroundColor,
    this.showImageErrorIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: Center(
        child: showImageErrorIcon
            ? Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  Assets.images.doctorImageLoadingFailedImage.path,
                  fit: BoxFit.contain,
                ),
              )
            : Text(
                (text == null || text!.isEmpty) ? 'U' : text!.toUpperCase(),
                style: AppTextStyles.extraLargeRobotoBold.copyWith(
                  color: foregroundColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
      ),
    );
  }
}
