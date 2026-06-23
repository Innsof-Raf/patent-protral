import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyles.extraLargeRobotoBold.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.4,
                ),
                borderRadius: BorderRadius.circular(16),
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
                      const SizedBox(width: 8),
                      Text(
                        DateFormat('dd MMM yyyy').format(appointmentDateTime),
                        style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        size: 18,
                        color: colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        DateFormat.jm().format(appointmentDateTime),
                        style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: _UserMiniProfile(
                    name: doctorName,
                    imageUrl: doctorImage,
                    label: 'Doctor',
                  ),
                ),
                Icon(Icons.arrow_forward_rounded, color: colorScheme.outline),
                Expanded(
                  child: _UserMiniProfile(
                    name: member.name,
                    imageUrl: member.profileImage != null
                        ? '${ConstantUrls.memberImageUrl}/${member.id}//${member.profileImage}'
                        : null,
                    label: 'Patient',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
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
                    child: const Text('Confirm'),
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

  const _UserMiniProfile({
    required this.name,
    this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: imageUrl != null
              ? CachedNetworkImageProvider(imageUrl!)
              : null,
          backgroundColor: theme.colorScheme.secondaryContainer,
          child: imageUrl == null
              ? Text(
                  name.isNotEmpty ? name[0].toUpperCase() : '?',
                  style: AppTextStyles.extraLargeRobotoBold.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: AppTextStyles.bodyTextRoboto.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyTextRoboto.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
