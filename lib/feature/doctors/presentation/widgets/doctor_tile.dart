import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_meta_chip.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isCompact = constraints.maxWidth < 390;
              return isCompact
                  ? _CompactDoctorTileContent(doctor: doctor)
                  : _WideDoctorTileContent(doctor: doctor);
            },
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
        const SizedBox(width: 14),
        Expanded(child: _DoctorDetails(doctor: doctor)),
        const SizedBox(width: 12),
        Align(
          alignment: Alignment.topRight,
          child: _BookDoctorButton(doctor: doctor),
        ),
      ],
    );
  }
}

class _CompactDoctorTileContent extends StatelessWidget {
  const _CompactDoctorTileContent({required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _DoctorAvatar(doctor: doctor, size: 78),
            const SizedBox(width: 12),
            Expanded(child: _DoctorDetails(doctor: doctor, compact: true)),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: _BookDoctorButton(doctor: doctor, expanded: true),
        ),
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
        child: Image.network(
          '${ConstantUrls.doctorImageUrl}/${doctor.idDoctor}/${doctor.doctorImage}',
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: theme.colorScheme.primary,
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          doctor.doctorName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleSmall?.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w800,
            height: 1.15,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          doctor.doctorSpeciality,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 7,
          runSpacing: 7,
          children: [
            DoctorMetaChip(
              icon: Icons.work_history_outlined,
              label: '${doctor.experience} yrs',
              compact: compact,
            ),
            DoctorMetaChip(
              icon: Icons.payments_outlined,
              label: 'QAR ${doctor.consultationFee.toStringAsFixed(0)}',
              compact: compact,
            ),
            DoctorMetaChip(
              icon: Icons.location_on_outlined,
              label: doctor.branch,
              compact: compact,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Next available today',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
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
    final theme = Theme.of(context);

    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize: expanded ? const Size.fromHeight(44) : const Size(78, 42),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
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
      child: const Text('Book'),
    );
  }
}
