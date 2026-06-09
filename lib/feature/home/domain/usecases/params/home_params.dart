import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/home_params.freezed.dart';

@freezed
sealed class HomeParams with _$HomeParams {
  const factory HomeParams.getHomeData({
    required String token,
    required int idBusunit,
  }) = _GetHomeDataParams;
}
