import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';

part 'search_doctor_event.dart';
part 'search_doctor_state.dart';
part 'generated/search_doctor_bloc.freezed.dart';

class SearchDoctorBloc extends Bloc<SearchDoctorEvent, SearchDoctorState> {
  SearchDoctorBloc() : super(SearchDoctorState.initial()) {
    on<SearchDoctor>((event, emit) {
      final List<Doctor> searchResult = [];
      for (Doctor doctor in event.doctors) {
        if (doctor.doctorName.toLowerCase().contains(event.searchKey)) {
          searchResult.add(doctor);
        }
      }
      emit(state.copyWith(searchResult: searchResult));
    });
  }
}
