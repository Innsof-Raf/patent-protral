part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isDataFetching,
    required bool isDataFetchingFailed,
    required bool isDataFetchingsuccess,
    required ErrorModel error,
    required HomeDataModel homeData,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      isDataFetching: false,
      isDataFetchingFailed: false,
      isDataFetchingsuccess: false,
      error: ErrorModel(message: ''),
      homeData: const HomeDataModel(
          ads: [],
          topSpecialities: [],
          topInsurances: [],
          topPackages: [],
          notificationCount: 0));
}
