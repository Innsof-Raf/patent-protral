import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/error_model.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';
import 'package:patient_portal/feature/home/domain/usecases/get_home_data_usecase.dart';
import 'package:patient_portal/feature/home/domain/usecases/get_tree_detail_item_usecase.dart';
import 'package:patient_portal/feature/home/domain/usecases/get_tree_detail_usecase.dart';
import 'package:patient_portal/feature/home/domain/usecases/params/home_params.dart';

part 'generated/home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeDataUseCase getHomeDataUseCase;
  final GetTreeDetailUseCase getTreeDetailUseCase;
  final GetTreeDetailItemUseCase getTreeDetailItemUseCase;

  HomeBloc({
    required this.getHomeDataUseCase,
    required this.getTreeDetailUseCase,
    required this.getTreeDetailItemUseCase,
  }) : super(HomeState.initial()) {
    on<GetHomeData>(_onGetHomeData);
    on<GetTreeDetail>(_onGetTreeDetail);
    on<GetTreeDetailItem>(_onGetTreeDetailItem);
  }

  Future<void> _onGetHomeData(
    GetHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isDataFetching: true,
        isDataFetchingFailed: false,
        isDataFetchingSuccess: false,
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
          isDataFetchingSuccess: true,
          homeData: homeData,
        ),
      ),
    );
  }

  Future<void> _onGetTreeDetail(
    GetTreeDetail event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isTreeDetailFetching: true,
        isTreeDetailFetchingFailed: false,
        isTreeDetailFetchingSuccess: false,
      ),
    );
    final result = await getTreeDetailUseCase(
      HomeParams.getTreeDetail(
        token: event.token,
        idTreedetail: event.idTreedetail,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isTreeDetailFetching: false,
          error: ErrorModel(message: failure.message),
          isTreeDetailFetchingFailed: true,
        ),
      ),
      (treeDetails) => emit(
        state.copyWith(
          isTreeDetailFetching: false,
          isTreeDetailFetchingSuccess: true,
          treeDetails: treeDetails,
        ),
      ),
    );
  }

  Future<void> _onGetTreeDetailItem(
    GetTreeDetailItem event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isTreeDetailItemsFetching: true,
        isTreeDetailItemsFetchingFailed: false,
        isTreeDetailItemsFetchingSuccess: false,
      ),
    );
    final result = await getTreeDetailItemUseCase(
      HomeParams.getTreeDetailItem(
        token: event.token,
        idTreedetail: event.idTreedetail,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isTreeDetailItemsFetching: false,
          error: ErrorModel(message: failure.message),
          isTreeDetailItemsFetchingFailed: true,
        ),
      ),
      (treeDetailItems) => emit(
        state.copyWith(
          isTreeDetailItemsFetching: false,
          isTreeDetailItemsFetchingSuccess: true,
          treeDetailItems: treeDetailItems,
        ),
      ),
    );
  }
}
