// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_known_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageKnownModel _$LanguageKnownModelFromJson(Map<String, dynamic> json) {
  return _LanguageKnownModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageKnownModel {
  @JsonKey(name: 'lang_cd')
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageKnownModelCopyWith<LanguageKnownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageKnownModelCopyWith<$Res> {
  factory $LanguageKnownModelCopyWith(
          LanguageKnownModel value, $Res Function(LanguageKnownModel) then) =
      _$LanguageKnownModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'lang_cd') String lng});
}

/// @nodoc
class _$LanguageKnownModelCopyWithImpl<$Res>
    implements $LanguageKnownModelCopyWith<$Res> {
  _$LanguageKnownModelCopyWithImpl(this._value, this._then);

  final LanguageKnownModel _value;
  // ignore: unused_field
  final $Res Function(LanguageKnownModel) _then;

  @override
  $Res call({
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LanguageKnownModelCopyWith<$Res>
    implements $LanguageKnownModelCopyWith<$Res> {
  factory _$$_LanguageKnownModelCopyWith(_$_LanguageKnownModel value,
          $Res Function(_$_LanguageKnownModel) then) =
      __$$_LanguageKnownModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'lang_cd') String lng});
}

/// @nodoc
class __$$_LanguageKnownModelCopyWithImpl<$Res>
    extends _$LanguageKnownModelCopyWithImpl<$Res>
    implements _$$_LanguageKnownModelCopyWith<$Res> {
  __$$_LanguageKnownModelCopyWithImpl(
      _$_LanguageKnownModel _value, $Res Function(_$_LanguageKnownModel) _then)
      : super(_value, (v) => _then(v as _$_LanguageKnownModel));

  @override
  _$_LanguageKnownModel get _value => super._value as _$_LanguageKnownModel;

  @override
  $Res call({
    Object? lng = freezed,
  }) {
    return _then(_$_LanguageKnownModel(
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageKnownModel implements _LanguageKnownModel {
  const _$_LanguageKnownModel({@JsonKey(name: 'lang_cd') required this.lng});

  factory _$_LanguageKnownModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageKnownModelFromJson(json);

  @override
  @JsonKey(name: 'lang_cd')
  final String lng;

  @override
  String toString() {
    return 'LanguageKnownModel(lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageKnownModel &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_LanguageKnownModelCopyWith<_$_LanguageKnownModel> get copyWith =>
      __$$_LanguageKnownModelCopyWithImpl<_$_LanguageKnownModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageKnownModelToJson(
      this,
    );
  }
}

abstract class _LanguageKnownModel implements LanguageKnownModel {
  const factory _LanguageKnownModel(
          {@JsonKey(name: 'lang_cd') required final String lng}) =
      _$_LanguageKnownModel;

  factory _LanguageKnownModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageKnownModel.fromJson;

  @override
  @JsonKey(name: 'lang_cd')
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageKnownModelCopyWith<_$_LanguageKnownModel> get copyWith =>
      throw _privateConstructorUsedError;
}
