import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class BookAppointmentConfirmationPopUp extends StatefulWidget {
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
  State<BookAppointmentConfirmationPopUp> createState() =>
      _BookAppointmentConfirmationPopUpState();
}

class _BookAppointmentConfirmationPopUpState
    extends State<BookAppointmentConfirmationPopUp> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 0,
      backgroundColor: AppColors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colorScheme.primary.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            widget.appointmentId == 0
                                ? Icons.event_available_rounded
                                : Icons.update_rounded,
                            color: colorScheme.primary,
                            size: 24,
                          ),
                        ),
                        const Gap(12),
                        Expanded(
                          child: Text(
                            widget.title,
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
                      widget.appointmentId == 0
                          ? context.lang.reviewAppointmentDetails
                          : context.lang.reviewUpdatedSlotDetails,
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
                                            context.currentLang,
                                          )
                                          .format(widget.appointmentDateTime)
                                          .localize(context.currentLang),
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
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
                                      DateFormat.jm(context.currentLang)
                                          .format(widget.appointmentDateTime)
                                          .localize(context.currentLang),
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
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
                                  name: widget.doctorName,
                                  imageUrl: widget.doctorImage,
                                  label: context.lang.doctor,
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
                                child: _UserMiniProfile(
                                  name:
                                      (widget.member.name.trim().isEmpty
                                              ? context.lang.unknown
                                              : widget.member.name)
                                          .toTitleCase(),
                                  imageUrl: widget.member.profileImage == null
                                      ? null
                                      : '${ConstantUrls.memberImageUrl}/${widget.member.id}/${widget.member.profileImage}',
                                  label: context.lang.patient,
                                  fallbackText:
                                      widget.member.name.trim().isEmpty
                                      ? context.lang.unknownInitial
                                      : widget.member.name.trim()[0],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: ActiveOutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(context.lang.cancel),
                          ),
                        ),
                        const Gap(12),
                        Expanded(
                          child: ActiveButton(
                            onPressed: () {
                              if (widget.appointmentId == 0) {
                                context.read<BookAppointmentBloc>().add(
                                  BookNewAppointment(
                                    appointmentDateTime:
                                        widget.appointmentDateTime,
                                    idDoctor: widget.idDoctor,
                                    idMember: widget.member.id,
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
                                    idAppointment: widget.appointmentId,
                                    appointmentDateTime:
                                        widget.appointmentDateTime,
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
                            child: Text(context.lang.confirm),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            PositionedDirectional(
              top: 8,
              end: 8,
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
    final theme = Theme.of(context);

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
            child: imageUrl != null && imageUrl!.isNotEmpty
                ? ClipOval(
                    child: SizedBox(
                      width: 64,
                      height: 64,
                      child: CachedNetworkImage(
                        imageUrl: imageUrl!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            CommonNetworkImage.placeholder(context, url),
                        errorWidget: (context, url, error) =>
                            CommonNetworkImage.errorWidget(context, url, error),
                      ),
                    ),
                  )
                : Text(
                    (fallbackText ??
                            (name.isNotEmpty
                                ? name[0]
                                : context.lang.unknownInitial))
                        .capitalize(),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
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
            label,
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
