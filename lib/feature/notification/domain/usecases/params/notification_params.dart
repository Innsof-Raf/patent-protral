import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/notification_params.freezed.dart';
part 'generated/notification_params.g.dart';

@freezed
sealed class NotificationParams with _$NotificationParams {
  const factory NotificationParams({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'mobile_no') required String mobileNumber,
  }) = _NotificationParams;

  const NotificationParams._();

  factory NotificationParams.fromJson(Map<String, dynamic> json) =>
      _$NotificationParamsFromJson(json);
}
