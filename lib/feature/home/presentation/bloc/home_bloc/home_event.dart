part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeData({
    required String token,
    required int idBusunit,
  }) = GetHomeData;

  const factory HomeEvent.getTreeDetail({
    required String token,
    @Default(0) int idTreedetail,
  }) = GetTreeDetail;

  const factory HomeEvent.getTreeDetailItem({
    required String token,
    @Default(0) int idTreedetail,
  }) = GetTreeDetailItem;
}
