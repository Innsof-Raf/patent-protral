import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/analytics/app_analytics_events.dart';
import 'package:patient_portal/core/injection_container.dart' as di;
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/services/analytics_service.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/success_dialog.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';

import 'book_appointment_screen_helpers.dart';

class BookAppointmentBottomNavigationBar extends StatelessWidget {
  const BookAppointmentBottomNavigationBar({
    super.key,
    required this.appointmentId,
    required this.doctorName,
    required this.doctorImage,
    required this.idDoctor,
    required this.selectedTypeNotifier,
  });

  final int appointmentId;
  final String doctorName;
  final String doctorImage;
  final int idDoctor;
  final ValueNotifier<int> selectedTypeNotifier;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<BookAppointmentBloc, BookAppointmentState>(
      builder: (context, state) {
        if (state.isFetchingError) return const SizedBox.shrink();

        return BlocConsumer<BookAppointmentBloc, BookAppointmentState>(
          listener: (context, state) {
            if (state.isAppointmentSavingFailure &&
                !state.isAppointmentSavingSuccses) {
              showDialog(
                context: context,
                builder: (context) => CommonErrorAlert(
                  content:
                      '${context.lang.appointmentBookingFailed}\n ${state.error.message}',
                ),
              );
            } else if (state.isAppointmentSavingSuccses &&
                !state.isAppointmentSavingFailure) {
              _handleSuccess(context, state);
            }
          },
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadowColorLight,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder<DateTime?>(
                        valueListenable:
                            BookAppointmentScreenHelpers.selectedSlotNotifier,
                        builder: (context, selectedSlot, child) {
                          if (selectedSlot == null) {
                            return Text(
                              context.lang.selectSlotToBookAppointment,
                              style: AppTextStyles.bodyTextRoboto.copyWith(
                                color: AppColors.textLight,
                                fontSize: 11,
                              ),
                            );
                          }
                          final isToday = DateUtils.isSameDay(
                            selectedSlot,
                            DateTime.now(),
                          );
                          final dateStr = isToday
                              ? context.lang.today
                              : DateFormat('d MMM, yyyy', context.currentLang)
                                    .format(selectedSlot)
                                    .localize(context.currentLang);

                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateFormat(
                                  'EEEE',
                                  context.currentLang,
                                ).format(selectedSlot),
                                style: AppTextStyles.bodyTextRoboto.copyWith(
                                  color: AppColors.textLight,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Gap(2),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          DateFormat(
                                                'h:mm a',
                                                context.currentLang,
                                              )
                                              .format(selectedSlot)
                                              .localize(context.currentLang),
                                      style: AppTextStyles.largeBoldRoboto
                                          .copyWith(
                                            color: AppColors.textDark,
                                            fontSize: 16,
                                          ),
                                    ),
                                    TextSpan(
                                      text: ', ',
                                      style: AppTextStyles.largeRobotoNormal
                                          .copyWith(
                                            color: AppColors.textLight,
                                            fontSize: 16,
                                          ),
                                    ),
                                    TextSpan(
                                      text: dateStr,
                                      style: AppTextStyles.largeRobotoNormal
                                          .copyWith(
                                            color: AppColors.textLight,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(4),
                              ValueListenableBuilder<int>(
                                valueListenable: selectedTypeNotifier,
                                builder: (context, type, child) {
                                  final isVideo = type == 1;
                                  final color = isVideo
                                      ? AppColors.blue
                                      : AppColors.lightGreen;
                                  return Row(
                                    children: [
                                      Icon(
                                        isVideo
                                            ? Icons.videocam_rounded
                                            : Icons.person_pin_circle_rounded,
                                        size: 16,
                                        color: color,
                                      ),
                                      const Gap(6),
                                      Text(
                                        isVideo
                                            ? context.lang.video
                                            : context.lang.inPerson,
                                        style: AppTextStyles.bodyTextRoboto
                                            .copyWith(
                                              color: color,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13,
                                            ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    const Gap(16),
                    SizedBox(
                      width: 150,
                      child: ActiveButton(
                        height: 48,
                        backgroundColor: AppColors.primaryCyanDark,
                        isLoading: state.isAppointmentLoading,
                        onPressed: () => _onPressed(context, state),
                        child: Text(
                          appointmentId == 0
                              ? context.lang.continueText
                              : context.lang.reschedule,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _onPressed(BuildContext context, BookAppointmentState state) {
    if (appointmentId == 0) {
      BookAppointmentScreenHelpers.bookAppointment(
        context: context,
        doctorImage: doctorImage,
        doctorName: doctorName,
        idDoctor: idDoctor,
      );
    } else {
      BookAppointmentScreenHelpers.rescheduleAppointment(
        doctorImage: doctorImage,
        doctorName: doctorName,
        idDoctor: idDoctor,
        context: context,
        idAppointment: appointmentId,
      );
    }
  }

  void _handleSuccess(BuildContext context, BookAppointmentState state) {
    if (state.appointmentDetails != null) {
      di.sl<AnalyticsService>().logEvent(
            AppAnalyticsEvents.appointmentBooked(
              doctorId: state.appointmentDetails!.idDoctor.toString(),
              speciality: state.appointmentDetails!.doctorSpeciality,
              appointmentType:
                  selectedTypeNotifier.value == 1 ? 'Virtual' : 'In-Clinic',
            ),
          );
    }

    final title = appointmentId == 0
        ? context.lang.appointmentBookedSuccessfully
        : context.lang.appointmentRescheduledSuccessfully;
    final router = context.router;

    showGeneralDialog(
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, animation, secondaryAnimation) =>
          const SizedBox.shrink(),
      context: context,
      transitionBuilder: (dialogContext, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
          child: SuccessDialog(
            title: title,
            onPressed: () {
              Navigator.of(dialogContext).pop();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                router.popUntilRouteWithName(MainRoute.name);
              });
            },
          ),
        );
      },
    ).then((_) {
      if (!context.mounted) return;
      _clearSelectionAndRefresh(context, state);
    });
  }

  void _clearSelectionAndRefresh(
    BuildContext context,
    BookAppointmentState state,
  ) {
    BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;

    if (appointmentId == 0) {
      context.read<MyAppointmentsBloc>().add(
        StoreBookedAppointment(
          params: MyAppointmentsParams.storeBookedAppointment(
            appointment: MyAppointment(
              appointmentDateTime:
                  state.appointmentDetails!.appointmentDateTime,
              branch: state.appointmentDetails!.branch,
              busUnitName: state.appointmentDetails!.busUnitName,
              departName: state.appointmentDetails!.deptName,
              doctorId: state.appointmentDetails!.doctorId,
              doctorName: state.appointmentDetails!.doctorName,
              email: state.appointmentDetails!.email,
              id: state.appointmentDetails!.id,
              idDoctor: state.appointmentDetails!.idDoctor,
              memberId: state.appointmentDetails!.idMember,
              memberName: state.appointmentDetails!.memberName,
              mobileNumber: state.appointmentDetails!.mobileNo,
              profileUrl: state.appointmentDetails!.doctorImage,
              speciality: state.appointmentDetails!.doctorSpeciality,
              isCanceling: false,
            ),
          ),
        ),
      );
      context.read<BookAppointmentBloc>().add(
        ChangeBookedSlotState(
          slotTime: state.appointmentDetails!.appointmentDateTime,
        ),
      );
      BookAppointmentScreenHelpers.selectedMemberNotifier.value = null;
    } else {
      final selectedAppointment = context
          .read<MyAppointmentsBloc>()
          .state
          .myAppointments
          .singleWhere((appointment) => appointment.id == appointmentId);

      context.read<BookAppointmentBloc>().add(
        ChangeRescheduledSlotState(
          oldSlot: selectedAppointment.appointmentDateTime,
          currentSlot: state.appointmentDetails!.appointmentDateTime,
        ),
      );
      context.read<MyAppointmentsBloc>().add(
        ChangeRescheduledAppointmentDetails(
          params: MyAppointmentsParams.changeRescheduledAppointmentDetails(
            appointment: selectedAppointment,
            currentSlot: state.appointmentDetails!.appointmentDateTime,
          ),
        ),
      );
    }
  }
}
