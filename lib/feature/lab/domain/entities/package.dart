import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/package.freezed.dart';

@freezed
sealed class Package with _$Package {
  const factory Package({
    required int id,
    required String pkgName,
    required double pkgPrice,
    required String pkgImage,
  }) = _Package;
}
