import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../models/my_appointment_model.dart';
import '../services/my_appointment_services.dart';

part 'my_appointments_event.dart';
part 'my_appointments_state.dart';
part 'generated/my_appointments_bloc.freezed.dart';

class MyAppointmentsBloc
    extends Bloc<MyAppointmentsEvent, MyAppointmentsState> {
  MyAppointmentsBloc() : super(MyAppointmentsState.initial()) {
    on<GetMyAppointments>((event, emit) async {
      emit(
        state.copyWith(
          isAppointmentsCancelationFailed: false,
          isAppointmentsCancelationSuccess: false,
          isAppointmentsFetching: true,
          isAppointmentsFetchingFailed: false,
          isAppointmentsFetchingSuccess: false,
        ),
      );
      final Either<ErrorModel, List<MyAppointmentModel>>
      myAppointmentsFetchingOptions =
          await MyAppointmentServices.getMyAppointments(
            mobileNumber: event.mobileNumber,
            token: event.token,
          );
      myAppointmentsFetchingOptions.fold(
        (error) => emit(
          state.copyWith(
            isAppointmentsFetching: false,
            isAppointmentsFetchingFailed: true,
            error: error,
          ),
        ),
        (myAppointments) {
          List<DateTime> monthTimeLineList = [];
          List<DateTime> monthTimeLineListOfConsulted = [];
          List<DateTime> monthTimeLineListOfNotConsulted = [];
          List<MyAppointmentModel> consultedAppointments = [];
          List<MyAppointmentModel> notConsultedAppointments = [];
          for (MyAppointmentModel appointment in myAppointments) {
            if (!monthTimeLineList.contains(
              DateTime(
                appointment.appointmentDateTime.year,
                appointment.appointmentDateTime.month,
              ),
            )) {
              monthTimeLineList.add(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              );
            }
            if (appointment.appointmentDateTime == DateTime.now() ||
                appointment.appointmentDateTime.isAfter(DateTime.now())) {
              notConsultedAppointments.add(appointment);
              if (!monthTimeLineListOfNotConsulted.contains(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              )) {
                monthTimeLineListOfNotConsulted.add(
                  DateTime(
                    appointment.appointmentDateTime.year,
                    appointment.appointmentDateTime.month,
                  ),
                );
              }
            } else {
              consultedAppointments.add(appointment);
              if (!monthTimeLineListOfConsulted.contains(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              )) {
                monthTimeLineListOfConsulted.add(
                  DateTime(
                    appointment.appointmentDateTime.year,
                    appointment.appointmentDateTime.month,
                  ),
                );
              }
            }
          }
          return emit(
            state.copyWith(
              isAppointmentsFetching: false,
              monthTimeLineListOfConsulted: monthTimeLineListOfConsulted,
              monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted,
              myConsultedAppointments: consultedAppointments,
              myNotConsultedAppointments: notConsultedAppointments,
              monthTimeLineList: monthTimeLineList,
              isAppointmentsFetchingSuccess: true,
              myAppointments: myAppointments,
            ),
          );
        },
      );
    });
    on<ChangeResheduledAppointmentDetails>((event, emit) {
      List<MyAppointmentModel> myAppointments = List.from(state.myAppointments);

      List<DateTime> monthTimeLineList = [];
      List<DateTime> monthTimeLineListOfNotConsulted = [];
      List<MyAppointmentModel> notConsultedAppointments = [];
      final int currentAppointmentIndex = myAppointments.indexOf(
        event.appointment,
      );
      myAppointments[currentAppointmentIndex] = MyAppointmentModel(
        id: event.appointment.id,
        memberId: event.appointment.memberId,
        memberName: event.appointment.memberName,
        email: event.appointment.email,
        mobileNumber: event.appointment.mobileNumber,
        departName: event.appointment.departName,
        doctorId: event.appointment.doctorId,
        doctorName: event.appointment.departName,
        speciality: event.appointment.speciality,
        branch: event.appointment.branch,
        profileUrl: event.appointment.profileUrl,
        busunitName: event.appointment.busunitName,
        appointmentDateTime: event.cureentSlot,
        idDoctor: event.appointment.idDoctor,
      );
      for (MyAppointmentModel appointment in myAppointments) {
        if (!monthTimeLineList.contains(
          DateTime(
            appointment.appointmentDateTime.year,
            appointment.appointmentDateTime.month,
          ),
        )) {
          monthTimeLineList.add(
            DateTime(
              appointment.appointmentDateTime.year,
              appointment.appointmentDateTime.month,
            ),
          );
        }
        if (appointment.appointmentDateTime == DateTime.now() ||
            appointment.appointmentDateTime.isAfter(DateTime.now())) {
          notConsultedAppointments.add(appointment);
          if (!monthTimeLineListOfNotConsulted.contains(
            DateTime(
              appointment.appointmentDateTime.year,
              appointment.appointmentDateTime.month,
            ),
          )) {
            monthTimeLineListOfNotConsulted.add(
              DateTime(
                appointment.appointmentDateTime.year,
                appointment.appointmentDateTime.month,
              ),
            );
          }
        }
      }
      return emit(
        state.copyWith(
          isAppointmentsCancelationFailed: false,
          isAppointmentsCancelationSuccess: false,
          monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted,
          myNotConsultedAppointments: notConsultedAppointments,
          monthTimeLineList: monthTimeLineList,
          myAppointments: myAppointments,
        ),
      );
    });
    on<CancelAppointment>((event, emit) async {
      emit(
        state.copyWith(
          isAppointmentsCancelationFailed: false,
          isAppointmentsCancelationSuccess: false,
          myAppointments: state.myAppointments.map((appointment) {
            if (appointment.id == event.idAppointment) {
              return appointment.copyWith(isCanceling: true);
            } else {
              return appointment;
            }
          }).toList(),
        ),
      );
      final Either<ErrorModel, Map> appointmentCancelationOptions =
          await MyAppointmentServices.cancelAppointment(
            appointmentId: event.idAppointment,
            token: event.token,
          );
      appointmentCancelationOptions.fold(
        (error) => emit(
          state.copyWith(isAppointmentsCancelationFailed: false, error: error),
        ),
        (sucessesResponse) {
          List<MyAppointmentModel> myAppointments = List.from(
            state.myAppointments,
          );

          List<DateTime> monthTimeLineList = [];
          List<DateTime> monthTimeLineListOfNotConsulted = [];
          List<MyAppointmentModel> notConsultedAppointments = [];
          myAppointments.removeWhere(
            (appointment) => appointment.id == event.idAppointment,
          );
          for (MyAppointmentModel appointment in myAppointments) {
            if (!monthTimeLineList.contains(
              DateTime(
                appointment.appointmentDateTime.year,
                appointment.appointmentDateTime.month,
              ),
            )) {
              monthTimeLineList.add(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              );
            }
            if (appointment.appointmentDateTime == DateTime.now() ||
                appointment.appointmentDateTime.isAfter(DateTime.now())) {
              notConsultedAppointments.add(appointment);
              if (!monthTimeLineListOfNotConsulted.contains(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              )) {
                monthTimeLineListOfNotConsulted.add(
                  DateTime(
                    appointment.appointmentDateTime.year,
                    appointment.appointmentDateTime.month,
                  ),
                );
              }
            }
          }
          return emit(
            state.copyWith(
              isAppointmentsCancelationSuccess: true,
              monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted,
              myNotConsultedAppointments: notConsultedAppointments,
              monthTimeLineList: monthTimeLineList,
              myAppointments: myAppointments,
            ),
          );
        },
      );
    });
    on<StoreBokkedApoointment>((event, emit) {
      List<MyAppointmentModel> myAppointments = List.from(state.myAppointments);
      List<MyAppointmentModel> myNotConsultedAppointments = List.from(
        state.myNotConsultedAppointments,
      );
      List<MyAppointmentModel> myConsultedAppointments = List.from(
        state.myConsultedAppointments,
      );
      List<DateTime> monthList = List.from(state.monthTimeLineList);
      List<DateTime> monthTimeLineListOfConsulted = List.from(
        state.monthTimeLineListOfConsulted,
      );
      List<DateTime> monthTimeLineListOfNotConsulted = List.from(
        state.monthTimeLineListOfNotConsulted,
      );
      if (event.appointment.appointmentDateTime.isAfter(DateTime.now())) {
        myAppointments.add(event.appointment);
        myNotConsultedAppointments.add(event.appointment);
        myAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        myNotConsultedAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        if (!monthList.contains(
          DateTime(
            event.appointment.appointmentDateTime.year,
            event.appointment.appointmentDateTime.month,
          ),
        )) {
          monthList.add(
            DateTime(
              event.appointment.appointmentDateTime.year,
              event.appointment.appointmentDateTime.month,
            ),
          );
          monthTimeLineListOfNotConsulted.add(
            DateTime(
              event.appointment.appointmentDateTime.year,
              event.appointment.appointmentDateTime.month,
            ),
          );
          monthList.sort((a, b) => a.compareTo(b));
          monthTimeLineListOfNotConsulted.sort((a, b) => a.compareTo(b));
        }
      } else {
        myAppointments.add(event.appointment);
        myConsultedAppointments.add(event.appointment);
        myAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        myConsultedAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        if (!monthList.contains(
          DateTime(
            event.appointment.appointmentDateTime.year,
            event.appointment.appointmentDateTime.month,
          ),
        )) {
          monthList.add(
            DateTime(
              event.appointment.appointmentDateTime.year,
              event.appointment.appointmentDateTime.month,
            ),
          );
          monthTimeLineListOfConsulted.add(
            DateTime(
              event.appointment.appointmentDateTime.year,
              event.appointment.appointmentDateTime.month,
            ),
          );
          monthList.sort((a, b) => a.compareTo(b));
          monthTimeLineListOfConsulted.sort((a, b) => a.compareTo(b));
        }
      }
      emit(
        state.copyWith(
          monthTimeLineList: monthList,
          myAppointments: myAppointments,
          myConsultedAppointments: myConsultedAppointments,
          monthTimeLineListOfConsulted: monthTimeLineListOfConsulted,
          monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted,
          myNotConsultedAppointments: myNotConsultedAppointments,
        ),
      );
    });
  }
}
