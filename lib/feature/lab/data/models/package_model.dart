import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/lab/domain/entities/package.dart';

part 'generated/package_model.freezed.dart';

@freezed
sealed class PackageModel with _$PackageModel {
  const PackageModel._();

  const factory PackageModel({
    required int id,
    required String pkgName,
    required double pkgPrice,
    required String pkgImage,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      id: json['id'] as int,
      pkgName: json['pkg_name'] as String,
      pkgPrice: (json['pkg_price'] as num).toDouble(),
      pkgImage: json['pkg_img'] as String,
    );
  }

  Package toEntity() => Package(
        id: id,
        pkgName: pkgName,
        pkgPrice: pkgPrice,
        pkgImage: pkgImage,
      );
}
