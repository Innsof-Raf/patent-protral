import 'package:patient_portal/feature/lab/domain/entities/package.dart';

class PackageModel {
  final int id;
  final String pkgName;
  final double pkgPrice;
  final String pkgImage;

  const PackageModel({
    required this.id,
    required this.pkgName,
    required this.pkgPrice,
    required this.pkgImage,
  });

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      id: json['id'] as int,
      pkgName: json['pkg_name'] as String,
      pkgPrice: (json['pkg_price'] as num).toDouble(),
      pkgImage: json['pkg_img'] as String,
    );
  }

  Package toEntity() {
    return Package(
      id: id,
      pkgName: pkgName,
      pkgPrice: pkgPrice,
      pkgImage: pkgImage,
    );
  }
}
