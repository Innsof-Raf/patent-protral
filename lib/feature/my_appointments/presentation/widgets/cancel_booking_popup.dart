import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      const Gap(12),
                      Expanded(
                        child: Text(
                          AppStaticTexts.cancelBooking,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  Text(
                    AppStaticTexts.cancelBookingMessage,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.5,
                    ),
                  ),
                  const Gap(24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest.withValues(
                        alpha: 0.3,
                      ),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: colorScheme.outlineVariant.withValues(
                          alpha: 0.5,
                        ),
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
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
                                    ? AppStaticTexts.unknownInitial
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
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
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
                          child: const Text(AppStaticTexts.keepBooking),
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: ActiveButton(
                          backgroundColor: colorScheme.error,
                          foregroundColor: colorScheme.onError,
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
                          child: const Text(AppStaticTexts.cancelIt),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
                color: theme.colorScheme.onSurfaceVariant,
                visualDensity: VisualDensity.compact,
              ),
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
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
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
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.bold,
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
    final theme = Theme.of(context);
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
                (text == null || text!.isEmpty)
                    ? AppStaticTexts.unknownInitial
                    : text!.toUpperCase(),
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: foregroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
