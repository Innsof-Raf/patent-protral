// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlotModel _$SlotModelFromJson(Map<String, dynamic> json) {
  return _SlotModel.fromJson(json);
}

/// @nodoc
mixin _$SlotModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "appdttm")
  DateTime get appdttm => throw _privateConstructorUsedError;
  @JsonKey(name: "booked")
  bool get isBooked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotModelCopyWith<SlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotModelCopyWith<$Res> {
  factory $SlotModelCopyWith(SlotModel value, $Res Function(SlotModel) then) =
      _$SlotModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "appdttm") DateTime appdttm,
      @JsonKey(name: "booked") bool isBooked});
}

/// @nodoc
class _$SlotModelCopyWithImpl<$Res> implements $SlotModelCopyWith<$Res> {
  _$SlotModelCopyWithImpl(this._value, this._then);

  final SlotModel _value;
  // ignore: unused_field
  final $Res Function(SlotModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? appdttm = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      appdttm: appdttm == freezed
          ? _value.appdttm
          : appdttm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SlotModelCopyWith<$Res> implements $SlotModelCopyWith<$Res> {
  factory _$$_SlotModelCopyWith(
          _$_SlotModel value, $Res Function(_$_SlotModel) then) =
      __$$_SlotModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "appdttm") DateTime appdttm,
      @JsonKey(name: "booked") bool isBooked});
}

/// @nodoc
class __$$_SlotModelCopyWithImpl<$Res> extends _$SlotModelCopyWithImpl<$Res>
    implements _$$_SlotModelCopyWith<$Res> {
  __$$_SlotModelCopyWithImpl(
      _$_SlotModel _value, $Res Function(_$_SlotModel) _then)
      : super(_value, (v) => _then(v as _$_SlotModel));

  @override
  _$_SlotModel get _value => super._value as _$_SlotModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? appdttm = freezed,
    Object? isBooked = freezed,
  }) {
    return _then(_$_SlotModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      appdttm: appdttm == freezed
          ? _value.appdttm
          : appdttm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlotModel implements _SlotModel {
  const _$_SlotModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "label") required this.label,
      @JsonKey(name: "appdttm") required this.appdttm,
      @JsonKey(name: "booked") required this.isBooked});

  factory _$_SlotModel.fromJson(Map<String, dynamic> json) =>
      _$$_SlotModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "appdttm")
  final DateTime appdttm;
  @override
  @JsonKey(name: "booked")
  final bool isBooked;

  @override
  String toString() {
    return 'SlotModel(id: $id, label: $label, appdttm: $appdttm, isBooked: $isBooked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.appdttm, appdttm) &&
            const DeepCollectionEquality().equals(other.isBooked, isBooked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(appdttm),
      const DeepCollectionEquality().hash(isBooked));

  @JsonKey(ignore: true)
  @override
  _$$_SlotModelCopyWith<_$_SlotModel> get copyWith =>
      __$$_SlotModelCopyWithImpl<_$_SlotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotModelToJson(
      this,
    );
  }
}

abstract class _SlotModel implements SlotModel {
  const factory _SlotModel(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "label") required final String label,
      @JsonKey(name: "appdttm") required final DateTime appdttm,
      @JsonKey(name: "booked") required final bool isBooked}) = _$_SlotModel;

  factory _SlotModel.fromJson(Map<String, dynamic> json) =
      _$_SlotModel.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "appdttm")
  DateTime get appdttm;
  @override
  @JsonKey(name: "booked")
  bool get isBooked;
  @override
  @JsonKey(ignore: true)
  _$$_SlotModelCopyWith<_$_SlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
