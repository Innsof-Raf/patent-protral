import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/doctor_model/doctor_model.dart';

part 'search_doctor_event.dart';
part 'search_doctor_state.dart';
part 'search_doctor_bloc.freezed.dart';

class SearchDoctorBloc extends Bloc<SearchDoctorEvent, SearchDoctorState> {
  SearchDoctorBloc() : super(SearchDoctorState.initial()) {
    on<SearchDoctor>((event, emit) {
      List<DoctorModel> searchResult = [];
      for (DoctorModel doctor in event.doctors) {
        if (doctor.doctorName.toLowerCase().contains(event.searchKey)) {
          searchResult.add(doctor);
        }
      }
      emit(state.copyWith(searchResult: searchResult));
    });
  }
}
