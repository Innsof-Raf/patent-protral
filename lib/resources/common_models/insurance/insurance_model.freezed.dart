// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insurance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsuranceModel _$InsuranceModelFromJson(Map<String, dynamic> json) {
  return _InsuranceModel.fromJson(json);
}

/// @nodoc
mixin _$InsuranceModel {
  @JsonKey(name: 'id_insurance')
  int get idInsurance => throw _privateConstructorUsedError;
  @JsonKey(name: 'ins_name')
  String get insuranceName => throw _privateConstructorUsedError;
  @JsonKey(name: "Img")
  String? get img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceModelCopyWith<InsuranceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceModelCopyWith<$Res> {
  factory $InsuranceModelCopyWith(
          InsuranceModel value, $Res Function(InsuranceModel) then) =
      _$InsuranceModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id_insurance') int idInsurance,
      @JsonKey(name: 'ins_name') String insuranceName,
      @JsonKey(name: "Img") String? img});
}

/// @nodoc
class _$InsuranceModelCopyWithImpl<$Res>
    implements $InsuranceModelCopyWith<$Res> {
  _$InsuranceModelCopyWithImpl(this._value, this._then);

  final InsuranceModel _value;
  // ignore: unused_field
  final $Res Function(InsuranceModel) _then;

  @override
  $Res call({
    Object? idInsurance = freezed,
    Object? insuranceName = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      idInsurance: idInsurance == freezed
          ? _value.idInsurance
          : idInsurance // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InsuranceModelCopyWith<$Res>
    implements $InsuranceModelCopyWith<$Res> {
  factory _$$_InsuranceModelCopyWith(
          _$_InsuranceModel value, $Res Function(_$_InsuranceModel) then) =
      __$$_InsuranceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id_insurance') int idInsurance,
      @JsonKey(name: 'ins_name') String insuranceName,
      @JsonKey(name: "Img") String? img});
}

/// @nodoc
class __$$_InsuranceModelCopyWithImpl<$Res>
    extends _$InsuranceModelCopyWithImpl<$Res>
    implements _$$_InsuranceModelCopyWith<$Res> {
  __$$_InsuranceModelCopyWithImpl(
      _$_InsuranceModel _value, $Res Function(_$_InsuranceModel) _then)
      : super(_value, (v) => _then(v as _$_InsuranceModel));

  @override
  _$_InsuranceModel get _value => super._value as _$_InsuranceModel;

  @override
  $Res call({
    Object? idInsurance = freezed,
    Object? insuranceName = freezed,
    Object? img = freezed,
  }) {
    return _then(_$_InsuranceModel(
      idInsurance: idInsurance == freezed
          ? _value.idInsurance
          : idInsurance // ignore: cast_nullable_to_non_nullable
              as int,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceModel implements _InsuranceModel {
  const _$_InsuranceModel(
      {@JsonKey(name: 'id_insurance') required this.idInsurance,
      @JsonKey(name: 'ins_name') required this.insuranceName,
      @JsonKey(name: "Img") this.img = null});

  factory _$_InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceModelFromJson(json);

  @override
  @JsonKey(name: 'id_insurance')
  final int idInsurance;
  @override
  @JsonKey(name: 'ins_name')
  final String insuranceName;
  @override
  @JsonKey(name: "Img")
  final String? img;

  @override
  String toString() {
    return 'InsuranceModel(idInsurance: $idInsurance, insuranceName: $insuranceName, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceModel &&
            const DeepCollectionEquality()
                .equals(other.idInsurance, idInsurance) &&
            const DeepCollectionEquality()
                .equals(other.insuranceName, insuranceName) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idInsurance),
      const DeepCollectionEquality().hash(insuranceName),
      const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$$_InsuranceModelCopyWith<_$_InsuranceModel> get copyWith =>
      __$$_InsuranceModelCopyWithImpl<_$_InsuranceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceModelToJson(
      this,
    );
  }
}

abstract class _InsuranceModel implements InsuranceModel {
  const factory _InsuranceModel(
      {@JsonKey(name: 'id_insurance') required final int idInsurance,
      @JsonKey(name: 'ins_name') required final String insuranceName,
      @JsonKey(name: "Img") final String? img}) = _$_InsuranceModel;

  factory _InsuranceModel.fromJson(Map<String, dynamic> json) =
      _$_InsuranceModel.fromJson;

  @override
  @JsonKey(name: 'id_insurance')
  int get idInsurance;
  @override
  @JsonKey(name: 'ins_name')
  String get insuranceName;
  @override
  @JsonKey(name: "Img")
  String? get img;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceModelCopyWith<_$_InsuranceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
