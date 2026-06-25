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
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class CancelBookingPopUp extends StatelessWidget {
  final int appointmentId;
  final DateTime appointmentDateTime;
  final String doctorName;
  final Member member;
  final String doctorImage;

  const CancelBookingPopUp({
    super.key,
    required this.appointmentId,
    required this.appointmentDateTime,
    required this.doctorName,
    required this.member,
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
                    color: colorScheme.error.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.event_busy_rounded,
                    color: colorScheme.error,
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
              AppStaticTexts.cancelBooking,
              style: AppTextStyles.extraLargeRobotoBold.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.5,
              ),
            ),
            const Gap(8),
            Text(
              AppStaticTexts.cancelBookingMessage,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: _ProfilePreview(
                          imageUrl: doctorImage,
                          title: doctorName,
                          subtitle: AppStaticTexts.doctor,
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
                        child: _ProfilePreview(
                          imageUrl: member.profileImage == null
                              ? null
                              : '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}',
                          title:
                              (member.name.trim().isEmpty
                                      ? AppStaticTexts.unknown
                                      : member.name)
                                  .toTitleCase(),
                          subtitle: AppStaticTexts.member,
                          fallbackText: member.name.trim().isEmpty
                              ? 'U'
                              : member.name.trim()[0],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_today_rounded,
                          size: 16,
                          color: colorScheme.primary,
                        ),
                        const Gap(10),
                        Text(
                          '${DateFormat('dd MMM yyyy').format(appointmentDateTime)} ${AppStaticTexts.at} ${DateFormat.jm().format(appointmentDateTime)}',
                          style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                            fontWeight: FontWeight.w800,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(28),
            Row(
              children: [
                Expanded(
                  child: ActiveOutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    borderRadius: 18,
                    child: const Text(AppStaticTexts.keepBooking),
                  ),
                ),
                const Gap(12),
                Expanded(
                  child: ActiveButton(
                    backgroundColor: colorScheme.error,
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<MyAppointmentsBloc>().add(
                        CancelAppointment(
                          params: MyAppointmentsParams.cancelAppointment(
                            appointmentId: appointmentId,
                            token: context
                                .read<UserBloc>()
                                .state
                                .user!
                                .accessToken,
                          ),
                        ),
                      );
                    },
                    borderRadius: 18,
                    child: const Text(AppStaticTexts.cancelIt),
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

class _ProfilePreview extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String subtitle;
  final String? fallbackText;

  const _ProfilePreview({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.fallbackText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
                        text: fallbackText,
                        backgroundColor: colorScheme.primaryContainer,
                        foregroundColor: colorScheme.onPrimaryContainer,
                      )
                    : CachedNetworkImage(
                        imageUrl: imageUrl!,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => _FallbackAvatar(
                          text: fallbackText,
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
          title,
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
            subtitle,
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
