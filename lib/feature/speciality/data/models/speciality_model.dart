import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityModel {
  final int idSpeciality;
  final String specialityId;
  final String specialityName;
  final String? specialityImage;

  const SpecialityModel({
    required this.idSpeciality,
    required this.specialityId,
    required this.specialityName,
    required this.specialityImage,
  });

  factory SpecialityModel.fromJson(Map<String, dynamic> json) {
    return SpecialityModel(
      idSpeciality: json['id_dept'] as int,
      specialityId: json['dept_id'] as String,
      specialityName: json['dept_name'] as String,
      specialityImage: json['dept_img'] as String?,
    );
  }

  Speciality toEntity() {
    return Speciality(
      idSpeciality: idSpeciality,
      specialityId: specialityId,
      specialityName: specialityName,
      specialityImage: specialityImage,
    );
  }
}
