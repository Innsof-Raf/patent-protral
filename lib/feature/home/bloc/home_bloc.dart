import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/home/models/home_data_model.dart/home_data_model.dart';
import 'package:patient_portal/feature/home/services/home_services.dart';
import 'package:patient_portal/resources/error_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'generated/home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<GetHomeData>((event, emit) async {
      emit(state.copyWith(
        isDataFetching: true,
        isDataFetchingFailed: false,
        isDataFetchingsuccess: false,
      ));
      Either<ErrorModel, HomeDataModel> homeDataFetchingOptions =
          await HomeServices.getHomeData(
              token: event.token, idBusunit: event.idBusunit);

      homeDataFetchingOptions.fold(
          (error) => emit(state.copyWith(
              isDataFetching: false, error: error, isDataFetchingFailed: true)),
          (homeData) => emit(state.copyWith(
              isDataFetching: false,
              isDataFetchingsuccess: true,
              homeData: homeData)));
    });
  }
}
