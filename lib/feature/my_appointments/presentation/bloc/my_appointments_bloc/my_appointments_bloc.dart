import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/my_appointments/domain/entities/my_appointment.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/cancel_appointment_usecase.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/get_my_appointments_usecase.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';

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
          isAppointmentsCancellationFailed: false,
          isAppointmentsCancellationSuccess: false,
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
          final List<DateTime> monthTimelineList = [];
          final List<DateTime> monthTimelineListOfConsulted = [];
          final List<DateTime> monthTimelineListOfNotConsulted = [];
          final List<MyAppointment> consultedAppointments = [];
          final List<MyAppointment> notConsultedAppointments = [];
          for (MyAppointment appointment in myAppointments) {
            if (!monthTimelineList.contains(
              DateTime(
                appointment.appointmentDateTime.year,
                appointment.appointmentDateTime.month,
              ),
            )) {
              monthTimelineList.add(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              );
            }
            if (!appointment.appointmentDateTime.isBefore(DateTime.now())) {
              notConsultedAppointments.add(appointment);
              if (!monthTimelineListOfNotConsulted.contains(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              )) {
                monthTimelineListOfNotConsulted.add(
                  DateTime(
                    appointment.appointmentDateTime.year,
                    appointment.appointmentDateTime.month,
                  ),
                );
              }
            } else {
              consultedAppointments.add(appointment);
              if (!monthTimelineListOfConsulted.contains(
                DateTime(
                  appointment.appointmentDateTime.year,
                  appointment.appointmentDateTime.month,
                ),
              )) {
                monthTimelineListOfConsulted.add(
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
              monthTimelineListOfConsulted: monthTimelineListOfConsulted,
              monthTimelineListOfNotConsulted: monthTimelineListOfNotConsulted,
              myConsultedAppointments: consultedAppointments,
              myNotConsultedAppointments: notConsultedAppointments,
              monthTimelineList: monthTimelineList,
              isAppointmentsFetchingSuccess: true,
              myAppointments: myAppointments,
            ),
          );
        },
      );
    });
    on<ChangeRescheduledAppointmentDetails>((event, emit) {
      final List<MyAppointment> myAppointments = List.from(
        state.myAppointments,
      );

      final List<DateTime> monthTimelineList = [];
      final List<DateTime> monthTimelineListOfNotConsulted = [];
      final List<MyAppointment> notConsultedAppointments = [];
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
        doctorName: event.params.appointment.doctorName,
        speciality: event.params.appointment.speciality,
        branch: event.params.appointment.branch,
        profileUrl: event.params.appointment.profileUrl,
        busUnitName: event.params.appointment.busUnitName,
        appointmentDateTime: event.params.currentSlot,
        idDoctor: event.params.appointment.idDoctor,
      );
      for (MyAppointment appointment in myAppointments) {
        if (!monthTimelineList.contains(
          DateTime(
            appointment.appointmentDateTime.year,
            appointment.appointmentDateTime.month,
          ),
        )) {
          monthTimelineList.add(
            DateTime(
              appointment.appointmentDateTime.year,
              appointment.appointmentDateTime.month,
            ),
          );
        }
        if (!appointment.appointmentDateTime.isBefore(DateTime.now())) {
          notConsultedAppointments.add(appointment);
          if (!monthTimelineListOfNotConsulted.contains(
            DateTime(
              appointment.appointmentDateTime.year,
              appointment.appointmentDateTime.month,
            ),
          )) {
            monthTimelineListOfNotConsulted.add(
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
          isAppointmentsCancellationFailed: false,
          isAppointmentsCancellationSuccess: false,
          monthTimelineListOfNotConsulted: monthTimelineListOfNotConsulted,
          myNotConsultedAppointments: notConsultedAppointments,
          monthTimelineList: monthTimelineList,
          myAppointments: myAppointments,
        ),
      );
    });
    on<CancelAppointment>((event, emit) async {
      emit(
        state.copyWith(
          isAppointmentsCancellationFailed: false,
          isAppointmentsCancellationSuccess: false,
          myAppointments: state.myAppointments.map((appointment) {
            if (appointment.id == event.params.appointmentId) {
              return appointment.copyWith(isCanceling: true);
            } else {
              return appointment;
            }
          }).toList(),
          myNotConsultedAppointments: state.myNotConsultedAppointments.map((
            appointment,
          ) {
            if (appointment.id == event.params.appointmentId) {
              return appointment.copyWith(isCanceling: true);
            } else {
              return appointment;
            }
          }).toList(),
          myConsultedAppointments: state.myConsultedAppointments.map((
            appointment,
          ) {
            if (appointment.id == event.params.appointmentId) {
              return appointment.copyWith(isCanceling: true);
            } else {
              return appointment;
            }
          }).toList(),
        ),
      );
      final Either<ErrorModel, Map> appointmentCancellationOptions =
          await cancelAppointmentUseCase(
            appointmentId: event.params.appointmentId,
            token: event.params.token,
          );
      appointmentCancellationOptions.fold(
        (error) => emit(
          state.copyWith(
            isAppointmentsCancellationFailed: true,
            error: error,
            myAppointments: state.myAppointments.map((appointment) {
              if (appointment.id == event.params.appointmentId) {
                return appointment.copyWith(isCanceling: false);
              } else {
                return appointment;
              }
            }).toList(),
            myNotConsultedAppointments: state.myNotConsultedAppointments.map((
              appointment,
            ) {
              if (appointment.id == event.params.appointmentId) {
                return appointment.copyWith(isCanceling: false);
              } else {
                return appointment;
              }
            }).toList(),
            myConsultedAppointments: state.myConsultedAppointments.map((
              appointment,
            ) {
              if (appointment.id == event.params.appointmentId) {
                return appointment.copyWith(isCanceling: false);
              } else {
                return appointment;
              }
            }).toList(),
          ),
        ),
        (successResponse) {
          final List<MyAppointment> myAppointments = List.from(
            state.myAppointments,
          );

          final List<DateTime> monthTimelineList = [];
          final List<DateTime> monthTimelineListOfConsulted = [];
          final List<DateTime> monthTimelineListOfNotConsulted = [];
          final List<MyAppointment> consultedAppointments = [];
          final List<MyAppointment> notConsultedAppointments = [];

          myAppointments.removeWhere(
            (appointment) => appointment.id == event.params.appointmentId,
          );

          for (MyAppointment appointment in myAppointments) {
            final monthDate = DateTime(
              appointment.appointmentDateTime.year,
              appointment.appointmentDateTime.month,
            );

            if (!monthTimelineList.contains(monthDate)) {
              monthTimelineList.add(monthDate);
            }

            if (!appointment.appointmentDateTime.isBefore(DateTime.now())) {
              notConsultedAppointments.add(appointment);
              if (!monthTimelineListOfNotConsulted.contains(monthDate)) {
                monthTimelineListOfNotConsulted.add(monthDate);
              }
            } else {
              consultedAppointments.add(appointment);
              if (!monthTimelineListOfConsulted.contains(monthDate)) {
                monthTimelineListOfConsulted.add(monthDate);
              }
            }
          }

          return emit(
            state.copyWith(
              isAppointmentsCancellationSuccess: true,
              monthTimelineList: monthTimelineList,
              monthTimelineListOfConsulted: monthTimelineListOfConsulted,
              monthTimelineListOfNotConsulted: monthTimelineListOfNotConsulted,
              myAppointments: myAppointments,
              myConsultedAppointments: consultedAppointments,
              myNotConsultedAppointments: notConsultedAppointments,
            ),
          );
        },
      );
    });
    on<StoreBookedAppointment>((event, emit) {
      final List<MyAppointment> myAppointments = List.from(
        state.myAppointments,
      );
      final List<MyAppointment> myNotConsultedAppointments = List.from(
        state.myNotConsultedAppointments,
      );
      final List<MyAppointment> myConsultedAppointments = List.from(
        state.myConsultedAppointments,
      );
      final List<DateTime> monthList = List.from(state.monthTimelineList);
      final List<DateTime> monthTimelineListOfConsulted = List.from(
        state.monthTimelineListOfConsulted,
      );
      final List<DateTime> monthTimelineListOfNotConsulted = List.from(
        state.monthTimelineListOfNotConsulted,
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
          monthTimelineListOfNotConsulted.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
            ),
          );
          monthList.sort((a, b) => a.compareTo(b));
          monthTimelineListOfNotConsulted.sort((a, b) => a.compareTo(b));
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
          monthTimelineListOfConsulted.add(
            DateTime(
              event.params.appointment.appointmentDateTime.year,
              event.params.appointment.appointmentDateTime.month,
            ),
          );
          monthList.sort((a, b) => a.compareTo(b));
          monthTimelineListOfConsulted.sort((a, b) => a.compareTo(b));
        }
      }
      emit(
        state.copyWith(
          monthTimelineList: monthList,
          myAppointments: myAppointments,
          myConsultedAppointments: myConsultedAppointments,
          monthTimelineListOfConsulted: monthTimelineListOfConsulted,
          monthTimelineListOfNotConsulted: monthTimelineListOfNotConsulted,
          myNotConsultedAppointments: myNotConsultedAppointments,
        ),
      );
    });
  }
}

extension _MyAppointmentsParamsX on MyAppointmentsParams {
  String get token => maybeWhen(
    getMyAppointments: (token, mobileNumber) => token,
    cancelAppointment: (appointmentId, token) => token,
    orElse: () => throw Exception('Invalid token params'),
  );

  String get mobileNumber => maybeWhen(
    getMyAppointments: (token, mobileNumber) => mobileNumber,
    orElse: () => throw Exception('Invalid mobile number params'),
  );

  MyAppointment get appointment => maybeWhen(
    storeBookedAppointment: (appointment) => appointment,
    changeRescheduledAppointmentDetails: (appointment, currentSlot) =>
        appointment,
    orElse: () => throw Exception('Invalid appointment params'),
  );

  DateTime get currentSlot => maybeWhen(
    changeRescheduledAppointmentDetails: (appointment, currentSlot) =>
        currentSlot,
    orElse: () => throw Exception('Invalid slot params'),
  );

  int get appointmentId => maybeWhen(
    cancelAppointment: (appointmentId, token) => appointmentId,
    orElse: () => throw Exception('Invalid appointment id params'),
  );
}
