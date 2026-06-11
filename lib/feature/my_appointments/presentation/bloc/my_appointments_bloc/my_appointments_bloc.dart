import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/cancel_appointment_usecase.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/get_my_appointments_usecase.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

part 'generated/my_appointments_bloc.freezed.dart';
part 'my_appointments_event.dart';
part 'my_appointments_state.dart';

class MyAppointmentsBloc
    extends Bloc<MyAppointmentsEvent, MyAppointmentsState> {
  final GetMyAppointmentsUseCase getMyAppointmentsUseCase;
  final CancelAppointmentUseCase cancelAppointmentUseCase;

  MyAppointmentsBloc({
    required this.getMyAppointmentsUseCase,
    required this.cancelAppointmentUseCase,
  }) : super(MyAppointmentsState.initial()) {
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
      final Either<ErrorModel, List<MyAppointment>>
      myAppointmentsFetchingOptions = await getMyAppointmentsUseCase(
        mobileNumber: event.params.mobileNumber,
        token: event.params.token,
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
          List<MyAppointment> consultedAppointments = [];
          List<MyAppointment> notConsultedAppointments = [];
          for (MyAppointment appointment in myAppointments) {
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
      List<MyAppointment> myAppointments = List.from(state.myAppointments);

      List<DateTime> monthTimeLineList = [];
      List<DateTime> monthTimeLineListOfNotConsulted = [];
      List<MyAppointment> notConsultedAppointments = [];
      final int currentAppointmentIndex = myAppointments.indexOf(
        event.params.appointment,
      );
      myAppointments[currentAppointmentIndex] = MyAppointment(
        id: event.params.appointment.id,
        memberId: event.params.appointment.memberId,
        memberName: event.params.appointment.memberName,
        email: event.params.appointment.email,
        mobileNumber: event.params.appointment.mobileNumber,
        departName: event.params.appointment.departName,
        doctorId: event.params.appointment.doctorId,
        doctorName: event.params.appointment.departName,
        speciality: event.params.appointment.speciality,
        branch: event.params.appointment.branch,
        profileUrl: event.params.appointment.profileUrl,
        busunitName: event.params.appointment.busunitName,
        appointmentDateTime: event.params.cureentSlot,
        idDoctor: event.params.appointment.idDoctor,
      );
      for (MyAppointment appointment in myAppointments) {
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
            if (appointment.id == event.params.idAppointment) {
              return appointment.copyWith(isCanceling: true);
            } else {
              return appointment;
            }
          }).toList(),
        ),
      );
      final Either<ErrorModel, Map> appointmentCancelationOptions =
          await cancelAppointmentUseCase(
            appointmentId: event.params.idAppointment,
            token: event.params.token,
          );
      appointmentCancelationOptions.fold(
        (error) => emit(
          state.copyWith(isAppointmentsCancelationFailed: false, error: error),
        ),
        (sucessesResponse) {
          List<MyAppointment> myAppointments = List.from(state.myAppointments);

          List<DateTime> monthTimeLineList = [];
          List<DateTime> monthTimeLineListOfNotConsulted = [];
          List<MyAppointment> notConsultedAppointments = [];
          myAppointments.removeWhere(
            (appointment) => appointment.id == event.params.idAppointment,
          );
          for (MyAppointment appointment in myAppointments) {
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
      List<MyAppointment> myAppointments = List.from(state.myAppointments);
      List<MyAppointment> myNotConsultedAppointments = List.from(
        state.myNotConsultedAppointments,
      );
      List<MyAppointment> myConsultedAppointments = List.from(
        state.myConsultedAppointments,
      );
      List<DateTime> monthList = List.from(state.monthTimeLineList);
      List<DateTime> monthTimeLineListOfConsulted = List.from(
        state.monthTimeLineListOfConsulted,
      );
      List<DateTime> monthTimeLineListOfNotConsulted = List.from(
        state.monthTimeLineListOfNotConsulted,
      );
      if (event.params.appointment.appointmentDateTime.isAfter(
        DateTime.now(),
      )) {
        myAppointments.add(event.params.appointment);
        myNotConsultedAppointments.add(event.params.appointment);
        myAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        myNotConsultedAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        if (!monthList.contains(
          DateTime(
            event.params.appointment.appointmentDateTime.year,
            event.params.appointment.appointmentDateTime.month,
          ),
        )) {
          monthList.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
            ),
          );
          monthTimeLineListOfNotConsulted.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
            ),
          );
          monthList.sort((a, b) => a.compareTo(b));
          monthTimeLineListOfNotConsulted.sort((a, b) => a.compareTo(b));
        }
      } else {
        myAppointments.add(event.params.appointment);
        myConsultedAppointments.add(event.params.appointment);
        myAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        myConsultedAppointments.sort(
          (a, b) => a.appointmentDateTime.compareTo(b.appointmentDateTime),
        );
        if (!monthList.contains(
          DateTime(
            event.params.appointment.appointmentDateTime.year,
            event.params.appointment.appointmentDateTime.month,
          ),
        )) {
          monthList.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
            ),
          );
          monthTimeLineListOfConsulted.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
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

extension _MyAppointmentsParamsX on MyAppointmentsParams {
  String get token => maybeWhen(
    getMyAppointments: (token, mobileNumber) => token,
    cancelAppointment: (idAppointment, token) => token,
    orElse: () => throw Exception('Invalid token params'),
  );

  String get mobileNumber => maybeWhen(
    getMyAppointments: (token, mobileNumber) => mobileNumber,
    orElse: () => throw Exception('Invalid mobile number params'),
  );

  MyAppointment get appointment => maybeWhen(
    storeBokkedApoointment: (appointment) => appointment,
    changeResheduledAppointmentDetails: (appointment, cureentSlot) =>
        appointment,
    orElse: () => throw Exception('Invalid appointment params'),
  );

  DateTime get cureentSlot => maybeWhen(
    changeResheduledAppointmentDetails: (appointment, cureentSlot) =>
        cureentSlot,
    orElse: () => throw Exception('Invalid slot params'),
  );

  int get idAppointment => maybeWhen(
    cancelAppointment: (idAppointment, token) => idAppointment,
    orElse: () => throw Exception('Invalid appointment id params'),
  );
}
