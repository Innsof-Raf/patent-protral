import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/lab/domain/entities/package.dart';

part 'generated/package_model.freezed.dart';
part 'generated/package_model.g.dart';

@freezed
sealed class PackageModel with _$PackageModel {
  const PackageModel._();

  const factory PackageModel({
    required int id,
    @JsonKey(name: 'pkg_name') required String pkgName,
    @JsonKey(name: 'pkg_price') required double pkgPrice,
    @JsonKey(name: 'pkg_img') required String pkgImage,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> json) =>
      _$PackageModelFromJson(json);

  Package toEntity() =>
      Package(id: id, pkgName: pkgName, pkgPrice: pkgPrice, pkgImage: pkgImage);
}
