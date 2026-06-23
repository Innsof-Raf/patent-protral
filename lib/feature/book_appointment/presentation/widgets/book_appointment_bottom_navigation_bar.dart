import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
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
  });

  final int appointmentId;
  final String doctorName;
  final String doctorImage;
  final int idDoctor;

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
                      '${AppStaticTexts.appointmentBookingFailed}\n ${state.error.message}',
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: SafeArea(
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: state.isAppointmentLoading
                      ? null
                      : () => _onPressed(context, state),
                  child: state.isAppointmentLoading
                      ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        )
                      : Text(
                          appointmentId == 0
                              ? AppStaticTexts.confirmBooking
                              : AppStaticTexts.rescheduleAppointment,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onPrimary,
                          ),
                        ),
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
    final title = appointmentId == 0
        ? AppStaticTexts.appointmentBookedSuccessfully
        : AppStaticTexts.appointmentRescheduledSuccessfully;

    showGeneralDialog(
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => Container(),
      context: context,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
          child: SuccessDialog(
            title: title,
            onPressed: () {
              context.router.popUntilRouteWithName(MainRoute.name);
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
