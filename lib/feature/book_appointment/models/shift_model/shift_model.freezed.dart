// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) {
  return _ShiftModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftModel {
  @JsonKey(name: 'slots')
  List<SlotModel> get slots => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift_detail')
  String get shift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftModelCopyWith<ShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftModelCopyWith<$Res> {
  factory $ShiftModelCopyWith(
          ShiftModel value, $Res Function(ShiftModel) then) =
      _$ShiftModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'slots') List<SlotModel> slots,
      @JsonKey(name: 'shift_detail') String shift});
}

/// @nodoc
class _$ShiftModelCopyWithImpl<$Res> implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._value, this._then);

  final ShiftModel _value;
  // ignore: unused_field
  final $Res Function(ShiftModel) _then;

  @override
  $Res call({
    Object? slots = freezed,
    Object? shift = freezed,
  }) {
    return _then(_value.copyWith(
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ShiftModelCopyWith<$Res>
    implements $ShiftModelCopyWith<$Res> {
  factory _$$_ShiftModelCopyWith(
          _$_ShiftModel value, $Res Function(_$_ShiftModel) then) =
      __$$_ShiftModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'slots') List<SlotModel> slots,
      @JsonKey(name: 'shift_detail') String shift});
}

/// @nodoc
class __$$_ShiftModelCopyWithImpl<$Res> extends _$ShiftModelCopyWithImpl<$Res>
    implements _$$_ShiftModelCopyWith<$Res> {
  __$$_ShiftModelCopyWithImpl(
      _$_ShiftModel _value, $Res Function(_$_ShiftModel) _then)
      : super(_value, (v) => _then(v as _$_ShiftModel));

  @override
  _$_ShiftModel get _value => super._value as _$_ShiftModel;

  @override
  $Res call({
    Object? slots = freezed,
    Object? shift = freezed,
  }) {
    return _then(_$_ShiftModel(
      slots: slots == freezed
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftModel implements _ShiftModel {
  const _$_ShiftModel(
      {@JsonKey(name: 'slots') required final List<SlotModel> slots,
      @JsonKey(name: 'shift_detail') required this.shift})
      : _slots = slots;

  factory _$_ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftModelFromJson(json);

  final List<SlotModel> _slots;
  @override
  @JsonKey(name: 'slots')
  List<SlotModel> get slots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  @JsonKey(name: 'shift_detail')
  final String shift;

  @override
  String toString() {
    return 'ShiftModel(slots: $slots, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftModel &&
            const DeepCollectionEquality().equals(other._slots, _slots) &&
            const DeepCollectionEquality().equals(other.shift, shift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_slots),
      const DeepCollectionEquality().hash(shift));

  @JsonKey(ignore: true)
  @override
  _$$_ShiftModelCopyWith<_$_ShiftModel> get copyWith =>
      __$$_ShiftModelCopyWithImpl<_$_ShiftModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftModelToJson(
      this,
    );
  }
}

abstract class _ShiftModel implements ShiftModel {
  const factory _ShiftModel(
          {@JsonKey(name: 'slots') required final List<SlotModel> slots,
          @JsonKey(name: 'shift_detail') required final String shift}) =
      _$_ShiftModel;

  factory _ShiftModel.fromJson(Map<String, dynamic> json) =
      _$_ShiftModel.fromJson;

  @override
  @JsonKey(name: 'slots')
  List<SlotModel> get slots;
  @override
  @JsonKey(name: 'shift_detail')
  String get shift;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftModelCopyWith<_$_ShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}
