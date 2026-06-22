import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/home_params.freezed.dart';
part 'generated/home_params.g.dart';

@freezed
sealed class HomeParams with _$HomeParams {
  const factory HomeParams.getHomeData({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_client') required int idBusunit,
  }) = _GetHomeDataParams;

  factory HomeParams.fromJson(Map<String, dynamic> json) =>
      _$HomeParamsFromJson(json);
}
