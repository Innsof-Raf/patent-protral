import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/error_model.freezed.dart';

@freezed
sealed class ErrorModel with _$ErrorModel {
  const factory ErrorModel({required String message}) = _ErrorModel;
}
