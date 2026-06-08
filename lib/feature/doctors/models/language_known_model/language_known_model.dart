import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_known_model.freezed.dart';
part 'language_known_model.g.dart';

@freezed
sealed class LanguageKnownModel with _$LanguageKnownModel {
  const factory LanguageKnownModel({
    @JsonKey(name: 'lang_cd') required String lng,
  }) = _LanguageKnownModel;

  factory LanguageKnownModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageKnownModelFromJson(json);
}
