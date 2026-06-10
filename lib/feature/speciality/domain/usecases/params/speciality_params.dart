import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality_model.dart';

part 'generated/speciality_params.freezed.dart';

@freezed
sealed class SpecialityParams with _$SpecialityParams {
  const factory SpecialityParams.fetchSpecialities({
    required String token,
    required int idBusUnit,
  }) = FetchSpecialitiesParams;

  const factory SpecialityParams.searchSpecialities({
    required String searchKey,
    required List<SpecialityModel> specialities,
  }) = SearchSpecialitiesParams;
}
