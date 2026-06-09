import 'package:patient_portal/feature/speciality/data/models/speciality_model.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';

class SearchSpecialitiesUseCase {
  final SpecialityRepository repository;

  SearchSpecialitiesUseCase(this.repository);

  Future<List<SpecialityModel>> call(SpecialityParams params) {
    return repository.searchSpecialities(params);
  }
}
