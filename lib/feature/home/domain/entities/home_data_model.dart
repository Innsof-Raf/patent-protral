import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/feature/home/domain/entities/ad_banner.dart';
import 'package:patient_portal/feature/home/domain/entities/home_data.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

typedef HomeDataModel = HomeData;

class $HomeDataModelCopyWith<$Res> {
  final HomeDataModel _value;
  final $Res Function(HomeDataModel) _then;

  $HomeDataModelCopyWith(this._value, this._then);

  $Res call({
    List<AdBanner>? ads,
    List<Speciality>? topSpecialities,
    List<InsuranceModel>? topInsurances,
    List<AdBanner>? topPackages,
    int? notificationCount,
  }) {
    return _then(
      _value.copyWith(
        ads: ads,
        topSpecialities: topSpecialities,
        topInsurances: topInsurances,
        topPackages: topPackages,
        notificationCount: notificationCount,
      ),
    );
  }
}
