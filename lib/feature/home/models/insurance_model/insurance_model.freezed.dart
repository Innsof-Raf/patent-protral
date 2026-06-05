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
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Img")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "Name")
  String get insuranceName => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Img") String? image,
      @JsonKey(name: "Name") String insuranceName});
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
    Object? id = freezed,
    Object? image = freezed,
    Object? insuranceName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Img") String? image,
      @JsonKey(name: "Name") String insuranceName});
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
    Object? id = freezed,
    Object? image = freezed,
    Object? insuranceName = freezed,
  }) {
    return _then(_$_InsuranceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceName: insuranceName == freezed
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsuranceModel implements _InsuranceModel {
  const _$_InsuranceModel(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Img") this.image = null,
      @JsonKey(name: "Name") required this.insuranceName});

  factory _$_InsuranceModel.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceModelFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Img")
  final String? image;
  @override
  @JsonKey(name: "Name")
  final String insuranceName;

  @override
  String toString() {
    return 'InsuranceModel(id: $id, image: $image, insuranceName: $insuranceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.insuranceName, insuranceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(insuranceName));

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
          {@JsonKey(name: "ID") required final int id,
          @JsonKey(name: "Img") final String? image,
          @JsonKey(name: "Name") required final String insuranceName}) =
      _$_InsuranceModel;

  factory _InsuranceModel.fromJson(Map<String, dynamic> json) =
      _$_InsuranceModel.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Img")
  String? get image;
  @override
  @JsonKey(name: "Name")
  String get insuranceName;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceModelCopyWith<_$_InsuranceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
