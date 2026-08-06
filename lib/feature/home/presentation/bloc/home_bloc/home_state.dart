part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isDataFetching,
    required bool isDataFetchingFailed,
    required bool isDataFetchingSuccess,
    required ErrorModel error,
    required HomeData homeData,
    @Default([]) List<TreeDetail> treeDetails,
    @Default(false) bool isTreeDetailFetching,
    @Default(false) bool isTreeDetailFetchingFailed,
    @Default(false) bool isTreeDetailFetchingSuccess,
    @Default([]) List<TreeDetailItem> treeDetailItems,
    @Default(false) bool isTreeDetailItemsFetching,
    @Default(false) bool isTreeDetailItemsFetchingFailed,
    @Default(false) bool isTreeDetailItemsFetchingSuccess,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    isDataFetching: false,
    isDataFetchingFailed: false,
    isDataFetchingSuccess: false,
    error: ErrorModel(message: ''),
    homeData: const HomeData(
      ads: [],
      topSpecialities: [],
      topInsurances: [],
      topPackages: [],
      topDoctors: [],
      notificationCount: 0,
    ),
    treeDetails: const [],
    isTreeDetailFetching: false,
    isTreeDetailFetchingFailed: false,
    isTreeDetailFetchingSuccess: false,
    treeDetailItems: const [],
    isTreeDetailItemsFetching: false,
    isTreeDetailItemsFetchingFailed: false,
    isTreeDetailItemsFetchingSuccess: false,
  );
}
