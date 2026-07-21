import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

part 'generated/speciality_params.freezed.dart';
part 'generated/speciality_params.g.dart';

@Freezed(toJson: true, fromJson: false)
sealed class SpecialityParams with _$SpecialityParams {
  const factory SpecialityParams.fetchSpecialities({
    @JsonKey(includeToJson: false) required String token,
    @JsonKey(name: 'id_busunit') required int idBusUnit,
  }) = FetchSpecialitiesParams;

  const factory SpecialityParams.searchSpecialities({
    @JsonKey(includeToJson: false) required String searchKey,
    @JsonKey(includeToJson: false, includeFromJson: false)
    required List<Speciality> specialities,
  }) = SearchSpecialitiesParams;
}
