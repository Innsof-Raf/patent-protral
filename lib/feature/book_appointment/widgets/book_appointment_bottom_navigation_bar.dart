import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/common_widgets.dart/common_error_alert.dart';
import '../../../resources/common_widgets.dart/succes_dailog.dart';
import '../../../route/route_constants.dart';
import '../../my_appointments/bloc/my_appointments_bloc.dart';
import '../../my_appointments/models/my_appointment_model.dart';
import '../blocs/appointment_bloc.dart/appointment_bloc.dart';
import '../blocs/slot_bloc/slot_bloc.dart';
import '../helpers/book_appointment_screen_helpers.dart';

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
    return BlocBuilder<SlotBloc, SlotState>(
      builder: (context, state) {
        return state.isFetchingError
            ? const SizedBox()
            : BlocConsumer<AppointmentBloc, AppointmentState>(
                listener: (context, state) {
                  if (state.isAppointmentSavingFailure &&
                      !state.isAppointmentSavingSuccses) {
                    showDialog(
                      context: context,
                      builder: (context) => CommonErrorAlert(
                        content:
                            'Appointment booking failed\n ${state.error.message}',
                      ),
                    );
                  } else if (state.isAppointmentSavingSuccses &&
                      !state.isAppointmentSavingFailure) {
                    if (appointmentId == 0) {
                      showGeneralDialog(
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Container();
                        },
                        context: context,
                        transitionBuilder:
                            (
                              context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child,
                            ) => Transform.scale(
                              scale: Curves.easeOut.transform(animation.value),
                              child: SucessDialog(
                                title: 'Appointment booked Succesfully',
                                onPressed: () {
                                  Navigator.popUntil(
                                    context,
                                    (route) =>
                                        route.settings.name ==
                                        RouteConstants.mainScreen,
                                  );
                                },
                              ),
                            ),
                      ).then((value) {
                        if (!context.mounted) return;
                        BookAppointmentScreenHelpers
                                .selectedSlotNotifier
                                .value =
                            null;
                        context.read<MyAppointmentsBloc>().add(
                          StoreBokkedApoointment(
                            appointment: MyAppointmentModel(
                              appointmentDateTime:
                                  state.appointmentDetails!.appointmentDateTime,
                              branch: state.appointmentDetails!.branch,
                              busunitName:
                                  state.appointmentDetails!.busunitName,
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
                              speciality:
                                  state.appointmentDetails!.doctorSpecility,
                              isCanceling: false,
                            ),
                          ),
                        );
                        context.read<SlotBloc>().add(
                          ChangeBookedSlotState(
                            slotTime:
                                state.appointmentDetails!.appointmentDateTime,
                          ),
                        );
                        BookAppointmentScreenHelpers
                                .selectedMemberNotifier
                                .value =
                            null;
                      });
                    } else {
                      showGeneralDialog(
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Container();
                        },
                        context: context,
                        transitionBuilder:
                            (
                              context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation,
                              Widget child,
                            ) => Transform.scale(
                              scale: Curves.easeOut.transform(animation.value),
                              child: SucessDialog(
                                title: 'Appointment Resheduled Succesfully',
                                onPressed: () {
                                  Navigator.popUntil(
                                    context,
                                    (route) =>
                                        route.settings.name ==
                                        RouteConstants.mainScreen,
                                  );
                                },
                              ),
                            ),
                      ).then((value) {
                        if (!context.mounted) return;
                        BookAppointmentScreenHelpers
                                .selectedSlotNotifier
                                .value =
                            null;
                        final MyAppointmentModel selectedAppointment = context
                            .read<MyAppointmentsBloc>()
                            .state
                            .myAppointments
                            .singleWhere(
                              (appointment) => appointment.id == appointmentId,
                            );

                        context.read<SlotBloc>().add(
                          ChangeResheduledSlotState(
                            oldSlot: selectedAppointment.appointmentDateTime,
                            currentSlot:
                                state.appointmentDetails!.appointmentDateTime,
                          ),
                        );
                        context.read<MyAppointmentsBloc>().add(
                          ChangeResheduledAppointmentDetails(
                            appointment: selectedAppointment,
                            cureentSlot:
                                state.appointmentDetails!.appointmentDateTime,
                          ),
                        );
                      });
                    }
                  }
                },
                builder: (context, state) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.vilot,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: AppColors.black.withValues(alpha: .25),
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 0,
                        backgroundColor: AppColors.vilot,
                        foregroundColor: AppColors.white,
                        padding: const EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        if (!state.isLoading) {
                          if (appointmentId == 0) {
                            BookAppointmentScreenHelpers.bookAppointment(
                              context: context,
                              doctorImage: doctorImage,
                              doctorName: doctorName,
                              idDoctor: idDoctor,
                            );
                          } else {
                            BookAppointmentScreenHelpers.resheduleAppointment(
                              doctorImage: doctorImage,
                              doctorName: doctorName,
                              idDoctor: idDoctor,
                              context: context,
                              idAppointment: appointmentId,
                            );
                          }
                        }
                      },
                      child: state.isLoading
                          ? const CircularProgressIndicator(
                              color: AppColors.white,
                            )
                          : Text(
                              'Done',
                              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                    ),
                  );
                },
              );
      },
    );
  }
}
