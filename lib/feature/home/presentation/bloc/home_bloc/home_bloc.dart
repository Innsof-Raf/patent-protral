import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/home/domain/usecases/get_home_data_usecase.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';
import 'package:patient_portal/core/resources/error_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'generated/home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;

  HomeBloc({required this.getHomeDataUseCase}) : super(HomeState.initial()) {
    on<GetHomeData>((event, emit) async {
      emit(
        state.copyWith(
          isDataFetching: true,
          isDataFetchingFailed: false,
          isDataFetchingsuccess: false,
        ),
      );
      final result = await getHomeDataUseCase(
        HomeParams.getHomeData(token: event.token, idBusunit: event.idBusunit),
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isDataFetching: false,
            error: ErrorModel(message: failure.message),
            isDataFetchingFailed: true,
          ),
        ),
        (homeData) => emit(
          state.copyWith(
            isDataFetching: false,
            isDataFetchingsuccess: true,
            homeData: homeData,
          ),
        ),
      );
    });
  }
}
