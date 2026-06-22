import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/doctor_params.freezed.dart';
part 'generated/doctor_params.g.dart';

@freezed
sealed class DoctorParams with _$DoctorParams {
  const factory DoctorParams.getAvailableDoctors({
    @JsonKey(name: 'id_dept') required int specialityId,
    @JsonKey(includeToJson: false) required String token,
  }) = GetAvailableDoctorsParams;

  factory DoctorParams.fromJson(Map<String, dynamic> json) =>
      _$DoctorParamsFromJson(json);
}
