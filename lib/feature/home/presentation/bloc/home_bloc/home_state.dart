part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isDataFetching,
    required bool isDataFetchingFailed,
    required bool isDataFetchingsuccess,
    required ErrorModel error,
    required HomeData homeData,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    isDataFetching: false,
    isDataFetchingFailed: false,
    isDataFetchingsuccess: false,
    error: ErrorModel(message: ''),
    homeData: const HomeData(
      ads: [],
      topSpecialities: [],
      topInsurances: [],
      topPackages: [],
      topDoctors: [],
      notificationCount: 0,
    ),
  );
}
