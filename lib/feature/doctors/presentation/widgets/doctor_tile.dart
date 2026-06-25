import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_meta_chip.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key, required this.doctor});

  final Doctor doctor;

  static String? normalizedBio(String? bio) {
    if (bio == null) return null;

    final normalized = bio.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized.isEmpty ? null : normalized;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bio = normalizedBio(doctor.doctorBio);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withValues(alpha: .05),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  final isCompact = constraints.maxWidth < 390;
                  return isCompact
                      ? _CompactDoctorTileContent(
                          doctor: doctor,
                          hasInfoButton: bio != null,
                        )
                      : _WideDoctorTileContent(doctor: doctor);
                },
              ),
              if (bio != null)
                Positioned(
                  top: 4,
                  right: 4,
                  child: _DoctorInfoButton(doctor: doctor, bio: bio),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WideDoctorTileContent extends StatelessWidget {
  const _WideDoctorTileContent({required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _DoctorAvatar(doctor: doctor, size: 92),
        const Gap(14),
        Expanded(child: _DoctorDetails(doctor: doctor)),
        const Gap(12),
        SizedBox(
          width: 104,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [_BookDoctorButton(doctor: doctor)],
          ),
        ),
      ],
    );
  }
}

class _CompactDoctorTileContent extends StatelessWidget {
  const _CompactDoctorTileContent({
    required this.doctor,
    required this.hasInfoButton,
  });

  final Doctor doctor;
  final bool hasInfoButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: hasInfoButton ? 42 : 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DoctorAvatar(doctor: doctor, size: 78),
              const Gap(12),
              Expanded(child: _DoctorDetails(doctor: doctor, compact: true)),
            ],
          ),
        ),
        const Gap(12),
        _BookDoctorButton(doctor: doctor, expanded: true),
      ],
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

    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: size,
        height: size,
        color: theme.colorScheme.surfaceContainerHighest,
        child: CachedNetworkImage(
          imageUrl:
              '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: theme.colorScheme.primary,
            ),
          ),
          errorWidget: (context, url, error) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                Assets.images.doctorImageLoadingFailedImage.path,
                fit: BoxFit.contain,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DoctorDetails extends StatelessWidget {
  const _DoctorDetails({required this.doctor, this.compact = false});

  final Doctor doctor;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final availability = doctor.availability.trim();
    final availabilityText = availability.isEmpty
        ? null
        : availability.toLowerCase() == 'not available'
        ? AppStaticTexts.notAvailable
        : availability.toLowerCase() == 'today'
        ? AppStaticTexts.nextAvailableToday
        : '${AppStaticTexts.nextAvailable} ${availability.toLowerCase()}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          doctor.doctorName.trim().toTitleCase(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.largeBoldRoboto.copyWith(
            color: theme.colorScheme.onSurface,
            height: 1.15,
          ),
        ),
        const Gap(4),
        Text(
          doctor.doctorSpeciality.trim().toTitleCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyTextInter.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
            fontSize: compact ? 9 : 10,
          ),
        ),
        if ((doctor.experience.trim().isNotEmpty && doctor.experience != '0') ||
            doctor.consultationFee > 0 ||
            (doctor.branch.trim().isNotEmpty && doctor.branch != '0') ||
            doctor.knownLanguages.isNotEmpty) ...[
          const Gap(6),
          Wrap(
            spacing: 12,
            runSpacing: 4,
            children: [
              if (doctor.experience.trim().isNotEmpty &&
                  doctor.experience != '0')
                DoctorMetaChip(
                  icon: Icons.work_history_outlined,
                  label:
                      '${doctor.experience} ${AppStaticTexts.yearsExperience}',
                  compact: compact,
                ),
              if (doctor.consultationFee > 0)
                DoctorMetaChip(
                  icon: Icons.payments_outlined,
                  label:
                      '${AppStaticTexts.qar} ${doctor.consultationFee.toStringAsFixed(0)}',
                  compact: compact,
                ),
              if (doctor.branch.trim().isNotEmpty && doctor.branch != '0')
                DoctorMetaChip(
                  icon: Icons.location_on_outlined,
                  label: doctor.branch.trim(),
                  compact: compact,
                ),
              if (doctor.knownLanguages.isNotEmpty)
                DoctorMetaChip(
                  icon: Icons.translate_rounded,
                  label: doctor.knownLanguages.join(', '),
                  compact: compact,
                ),
            ],
          ),
        ],
        if (availabilityText != null) ...[
          const Gap(6),
          Text(
            availabilityText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyTextBoldRoboto.copyWith(
              color: theme.colorScheme.primary,
              fontSize: compact ? 9 : 10,
            ),
          ),
        ],
      ],
    );
  }
}

class _BookDoctorButton extends StatelessWidget {
  const _BookDoctorButton({required this.doctor, this.expanded = false});

  final Doctor doctor;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    return ActiveButton(
      height: expanded ? 44 : 42,
      width: expanded ? double.infinity : 104,
      borderRadius: 15,
      onPressed: () {
        BookAppointmentScreenHelpers.selectedMemberNotifier.value = null;
        BookAppointmentScreenHelpers.createDateList();
        BookAppointmentScreenHelpers.selectedDateNotifier.value =
            BookAppointmentScreenHelpers.dateList[0];
        context.router.push(
          BookAppointmentRoute(
            doctorName: doctor.doctorName,
            idDoctor: doctor.idDoctor,
            doctorImage:
                '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
            appointmentId: 0,
          ),
        );
      },
      child: const Text(AppStaticTexts.book),
    );
  }
}

class _DoctorInfoButton extends StatelessWidget {
  const _DoctorInfoButton({required this.doctor, required this.bio});

  final Doctor doctor;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .4),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .2),
        ),
      ),
      child: SizedBox(
        width: 28,
        height: 28,
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
          visualDensity: VisualDensity.compact,
          splashRadius: 14,
          onPressed: () => showDialog<void>(
            context: context,
            builder: (dialogContext) => _DoctorInfoDialog(
              doctorName: doctor.doctorName.toTitleCase(),
              bio: bio,
            ),
          ),
          tooltip: AppStaticTexts.viewInfo,
          icon: Icon(
            Icons.info_outline_rounded,
            size: 16,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class _DoctorInfoDialog extends StatelessWidget {
  const _DoctorInfoDialog({required this.doctorName, required this.bio});

  final String doctorName;
  final String bio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
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
                  Text(
                    AppStaticTexts.doctorInfo,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    doctorName,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(16),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Text(
                        bio,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const Gap(24),
                  SizedBox(
                    width: double.infinity,
                    child: ActiveButton(
                      onPressed: () => Navigator.pop(context),
                      height: 50,
                      child: const Text(AppStaticTexts.close),
                    ),
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
