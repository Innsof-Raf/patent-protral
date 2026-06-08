part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeData({
    required String token,
    required int idBusunit,
  }) = GetHomeData;
}
