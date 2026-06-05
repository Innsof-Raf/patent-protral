// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speciality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecialityModel _$SpecialityModelFromJson(Map<String, dynamic> json) {
  return _SpecilityModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialityModel {
  @JsonKey(name: 'id_dept')
  int get idSpeciality => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_id')
  String get specialityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_name')
  String get specialityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_img')
  String? get specialityImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialityModelCopyWith<SpecialityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityModelCopyWith<$Res> {
  factory $SpecialityModelCopyWith(
          SpecialityModel value, $Res Function(SpecialityModel) then) =
      _$SpecialityModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_dept') int idSpeciality,
      @JsonKey(name: 'dept_id') String specialityId,
      @JsonKey(name: 'dept_name') String specialityName,
      @JsonKey(name: 'dept_img') String? specialityImage});
}

/// @nodoc
class _$SpecialityModelCopyWithImpl<$Res>
    implements $SpecialityModelCopyWith<$Res> {
  _$SpecialityModelCopyWithImpl(this._value, this._then);

  final SpecialityModel _value;
  // ignore: unused_field
  final $Res Function(SpecialityModel) _then;

  @override
  $Res call({
    Object? idSpeciality = freezed,
    Object? specialityId = freezed,
    Object? specialityName = freezed,
    Object? specialityImage = freezed,
  }) {
    return _then(_value.copyWith(
      idSpeciality: idSpeciality == freezed
          ? _value.idSpeciality
          : idSpeciality // ignore: cast_nullable_to_non_nullable
              as int,
      specialityId: specialityId == freezed
          ? _value.specialityId
          : specialityId // ignore: cast_nullable_to_non_nullable
              as String,
      specialityName: specialityName == freezed
          ? _value.specialityName
          : specialityName // ignore: cast_nullable_to_non_nullable
              as String,
      specialityImage: specialityImage == freezed
          ? _value.specialityImage
          : specialityImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecilityModelCopyWith<$Res>
    implements $SpecialityModelCopyWith<$Res> {
  factory _$$_SpecilityModelCopyWith(
          _$_SpecilityModel value, $Res Function(_$_SpecilityModel) then) =
      __$$_SpecilityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_dept') int idSpeciality,
      @JsonKey(name: 'dept_id') String specialityId,
      @JsonKey(name: 'dept_name') String specialityName,
      @JsonKey(name: 'dept_img') String? specialityImage});
}

/// @nodoc
class __$$_SpecilityModelCopyWithImpl<$Res>
    extends _$SpecialityModelCopyWithImpl<$Res>
    implements _$$_SpecilityModelCopyWith<$Res> {
  __$$_SpecilityModelCopyWithImpl(
      _$_SpecilityModel _value, $Res Function(_$_SpecilityModel) _then)
      : super(_value, (v) => _then(v as _$_SpecilityModel));

  @override
  _$_SpecilityModel get _value => super._value as _$_SpecilityModel;

  @override
  $Res call({
    Object? idSpeciality = freezed,
    Object? specialityId = freezed,
    Object? specialityName = freezed,
    Object? specialityImage = freezed,
  }) {
    return _then(_$_SpecilityModel(
      idSpeciality: idSpeciality == freezed
          ? _value.idSpeciality
          : idSpeciality // ignore: cast_nullable_to_non_nullable
              as int,
      specialityId: specialityId == freezed
          ? _value.specialityId
          : specialityId // ignore: cast_nullable_to_non_nullable
              as String,
      specialityName: specialityName == freezed
          ? _value.specialityName
          : specialityName // ignore: cast_nullable_to_non_nullable
              as String,
      specialityImage: specialityImage == freezed
          ? _value.specialityImage
          : specialityImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecilityModel implements _SpecilityModel {
  const _$_SpecilityModel(
      {@JsonKey(name: 'id_dept') required this.idSpeciality,
      @JsonKey(name: 'dept_id') required this.specialityId,
      @JsonKey(name: 'dept_name') required this.specialityName,
      @JsonKey(name: 'dept_img') required this.specialityImage});

  factory _$_SpecilityModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpecilityModelFromJson(json);

  @override
  @JsonKey(name: 'id_dept')
  final int idSpeciality;
  @override
  @JsonKey(name: 'dept_id')
  final String specialityId;
  @override
  @JsonKey(name: 'dept_name')
  final String specialityName;
  @override
  @JsonKey(name: 'dept_img')
  final String? specialityImage;

  @override
  String toString() {
    return 'SpecialityModel(idSpeciality: $idSpeciality, specialityId: $specialityId, specialityName: $specialityName, specialityImage: $specialityImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecilityModel &&
            const DeepCollectionEquality()
                .equals(other.idSpeciality, idSpeciality) &&
            const DeepCollectionEquality()
                .equals(other.specialityId, specialityId) &&
            const DeepCollectionEquality()
                .equals(other.specialityName, specialityName) &&
            const DeepCollectionEquality()
                .equals(other.specialityImage, specialityImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idSpeciality),
      const DeepCollectionEquality().hash(specialityId),
      const DeepCollectionEquality().hash(specialityName),
      const DeepCollectionEquality().hash(specialityImage));

  @JsonKey(ignore: true)
  @override
  _$$_SpecilityModelCopyWith<_$_SpecilityModel> get copyWith =>
      __$$_SpecilityModelCopyWithImpl<_$_SpecilityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecilityModelToJson(
      this,
    );
  }
}

abstract class _SpecilityModel implements SpecialityModel {
  const factory _SpecilityModel(
          {@JsonKey(name: 'id_dept') required final int idSpeciality,
          @JsonKey(name: 'dept_id') required final String specialityId,
          @JsonKey(name: 'dept_name') required final String specialityName,
          @JsonKey(name: 'dept_img') required final String? specialityImage}) =
      _$_SpecilityModel;

  factory _SpecilityModel.fromJson(Map<String, dynamic> json) =
      _$_SpecilityModel.fromJson;

  @override
  @JsonKey(name: 'id_dept')
  int get idSpeciality;
  @override
  @JsonKey(name: 'dept_id')
  String get specialityId;
  @override
  @JsonKey(name: 'dept_name')
  String get specialityName;
  @override
  @JsonKey(name: 'dept_img')
  String? get specialityImage;
  @override
  @JsonKey(ignore: true)
  _$$_SpecilityModelCopyWith<_$_SpecilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
