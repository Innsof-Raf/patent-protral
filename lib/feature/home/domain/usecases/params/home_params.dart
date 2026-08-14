import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/home_params.freezed.dart';
part 'generated/home_params.g.dart';

@freezed
sealed class HomeParams with _$HomeParams {
  const factory HomeParams.getHomeData({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_client') required int idBusunit,
  }) = _GetHomeDataParams;

  const factory HomeParams.getTreeDetail({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_treedetail') required int idTreedetail,
  }) = _GetTreeDetailParams;

  const factory HomeParams.getTreeDetailItem({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_treedetail') required int idTreedetail,
  }) = _GetTreeDetailItemParams;

  factory HomeParams.fromJson(Map<String, dynamic> json) =>
      _$HomeParamsFromJson(json);
}
