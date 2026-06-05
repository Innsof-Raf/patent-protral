// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime date, String token)
        getAvailableSlots,
    required TResult Function(DateTime slotTime) changeBookedSlotState,
    required TResult Function(DateTime oldSlot, DateTime currentSlot)
        changeResheduledSlotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableSlots value) getAvailableSlots,
    required TResult Function(ChangeBookedSlotState value)
        changeBookedSlotState,
    required TResult Function(ChangeResheduledSlotState value)
        changeResheduledSlotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotEventCopyWith<$Res> {
  factory $SlotEventCopyWith(SlotEvent value, $Res Function(SlotEvent) then) =
      _$SlotEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SlotEventCopyWithImpl<$Res> implements $SlotEventCopyWith<$Res> {
  _$SlotEventCopyWithImpl(this._value, this._then);

  final SlotEvent _value;
  // ignore: unused_field
  final $Res Function(SlotEvent) _then;
}

/// @nodoc
abstract class _$$GetAvailableSlotsCopyWith<$Res> {
  factory _$$GetAvailableSlotsCopyWith(
          _$GetAvailableSlots value, $Res Function(_$GetAvailableSlots) then) =
      __$$GetAvailableSlotsCopyWithImpl<$Res>;
  $Res call({int idDoctor, DateTime date, String token});
}

/// @nodoc
class __$$GetAvailableSlotsCopyWithImpl<$Res>
    extends _$SlotEventCopyWithImpl<$Res>
    implements _$$GetAvailableSlotsCopyWith<$Res> {
  __$$GetAvailableSlotsCopyWithImpl(
      _$GetAvailableSlots _value, $Res Function(_$GetAvailableSlots) _then)
      : super(_value, (v) => _then(v as _$GetAvailableSlots));

  @override
  _$GetAvailableSlots get _value => super._value as _$GetAvailableSlots;

  @override
  $Res call({
    Object? idDoctor = freezed,
    Object? date = freezed,
    Object? token = freezed,
  }) {
    return _then(_$GetAvailableSlots(
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAvailableSlots implements GetAvailableSlots {
  const _$GetAvailableSlots(
      {required this.idDoctor, required this.date, required this.token});

  @override
  final int idDoctor;
  @override
  final DateTime date;
  @override
  final String token;

  @override
  String toString() {
    return 'SlotEvent.getAvailableSlots(idDoctor: $idDoctor, date: $date, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailableSlots &&
            const DeepCollectionEquality().equals(other.idDoctor, idDoctor) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idDoctor),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$GetAvailableSlotsCopyWith<_$GetAvailableSlots> get copyWith =>
      __$$GetAvailableSlotsCopyWithImpl<_$GetAvailableSlots>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime date, String token)
        getAvailableSlots,
    required TResult Function(DateTime slotTime) changeBookedSlotState,
    required TResult Function(DateTime oldSlot, DateTime currentSlot)
        changeResheduledSlotState,
  }) {
    return getAvailableSlots(idDoctor, date, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
  }) {
    return getAvailableSlots?.call(idDoctor, date, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (getAvailableSlots != null) {
      return getAvailableSlots(idDoctor, date, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableSlots value) getAvailableSlots,
    required TResult Function(ChangeBookedSlotState value)
        changeBookedSlotState,
    required TResult Function(ChangeResheduledSlotState value)
        changeResheduledSlotState,
  }) {
    return getAvailableSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
  }) {
    return getAvailableSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (getAvailableSlots != null) {
      return getAvailableSlots(this);
    }
    return orElse();
  }
}

abstract class GetAvailableSlots implements SlotEvent {
  const factory GetAvailableSlots(
      {required final int idDoctor,
      required final DateTime date,
      required final String token}) = _$GetAvailableSlots;

  int get idDoctor;
  DateTime get date;
  String get token;
  @JsonKey(ignore: true)
  _$$GetAvailableSlotsCopyWith<_$GetAvailableSlots> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBookedSlotStateCopyWith<$Res> {
  factory _$$ChangeBookedSlotStateCopyWith(_$ChangeBookedSlotState value,
          $Res Function(_$ChangeBookedSlotState) then) =
      __$$ChangeBookedSlotStateCopyWithImpl<$Res>;
  $Res call({DateTime slotTime});
}

/// @nodoc
class __$$ChangeBookedSlotStateCopyWithImpl<$Res>
    extends _$SlotEventCopyWithImpl<$Res>
    implements _$$ChangeBookedSlotStateCopyWith<$Res> {
  __$$ChangeBookedSlotStateCopyWithImpl(_$ChangeBookedSlotState _value,
      $Res Function(_$ChangeBookedSlotState) _then)
      : super(_value, (v) => _then(v as _$ChangeBookedSlotState));

  @override
  _$ChangeBookedSlotState get _value => super._value as _$ChangeBookedSlotState;

  @override
  $Res call({
    Object? slotTime = freezed,
  }) {
    return _then(_$ChangeBookedSlotState(
      slotTime: slotTime == freezed
          ? _value.slotTime
          : slotTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeBookedSlotState implements ChangeBookedSlotState {
  const _$ChangeBookedSlotState({required this.slotTime});

  @override
  final DateTime slotTime;

  @override
  String toString() {
    return 'SlotEvent.changeBookedSlotState(slotTime: $slotTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBookedSlotState &&
            const DeepCollectionEquality().equals(other.slotTime, slotTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(slotTime));

  @JsonKey(ignore: true)
  @override
  _$$ChangeBookedSlotStateCopyWith<_$ChangeBookedSlotState> get copyWith =>
      __$$ChangeBookedSlotStateCopyWithImpl<_$ChangeBookedSlotState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime date, String token)
        getAvailableSlots,
    required TResult Function(DateTime slotTime) changeBookedSlotState,
    required TResult Function(DateTime oldSlot, DateTime currentSlot)
        changeResheduledSlotState,
  }) {
    return changeBookedSlotState(slotTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
  }) {
    return changeBookedSlotState?.call(slotTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (changeBookedSlotState != null) {
      return changeBookedSlotState(slotTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableSlots value) getAvailableSlots,
    required TResult Function(ChangeBookedSlotState value)
        changeBookedSlotState,
    required TResult Function(ChangeResheduledSlotState value)
        changeResheduledSlotState,
  }) {
    return changeBookedSlotState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
  }) {
    return changeBookedSlotState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (changeBookedSlotState != null) {
      return changeBookedSlotState(this);
    }
    return orElse();
  }
}

abstract class ChangeBookedSlotState implements SlotEvent {
  const factory ChangeBookedSlotState({required final DateTime slotTime}) =
      _$ChangeBookedSlotState;

  DateTime get slotTime;
  @JsonKey(ignore: true)
  _$$ChangeBookedSlotStateCopyWith<_$ChangeBookedSlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeResheduledSlotStateCopyWith<$Res> {
  factory _$$ChangeResheduledSlotStateCopyWith(
          _$ChangeResheduledSlotState value,
          $Res Function(_$ChangeResheduledSlotState) then) =
      __$$ChangeResheduledSlotStateCopyWithImpl<$Res>;
  $Res call({DateTime oldSlot, DateTime currentSlot});
}

/// @nodoc
class __$$ChangeResheduledSlotStateCopyWithImpl<$Res>
    extends _$SlotEventCopyWithImpl<$Res>
    implements _$$ChangeResheduledSlotStateCopyWith<$Res> {
  __$$ChangeResheduledSlotStateCopyWithImpl(_$ChangeResheduledSlotState _value,
      $Res Function(_$ChangeResheduledSlotState) _then)
      : super(_value, (v) => _then(v as _$ChangeResheduledSlotState));

  @override
  _$ChangeResheduledSlotState get _value =>
      super._value as _$ChangeResheduledSlotState;

  @override
  $Res call({
    Object? oldSlot = freezed,
    Object? currentSlot = freezed,
  }) {
    return _then(_$ChangeResheduledSlotState(
      oldSlot: oldSlot == freezed
          ? _value.oldSlot
          : oldSlot // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentSlot: currentSlot == freezed
          ? _value.currentSlot
          : currentSlot // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeResheduledSlotState implements ChangeResheduledSlotState {
  const _$ChangeResheduledSlotState(
      {required this.oldSlot, required this.currentSlot});

  @override
  final DateTime oldSlot;
  @override
  final DateTime currentSlot;

  @override
  String toString() {
    return 'SlotEvent.changeResheduledSlotState(oldSlot: $oldSlot, currentSlot: $currentSlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeResheduledSlotState &&
            const DeepCollectionEquality().equals(other.oldSlot, oldSlot) &&
            const DeepCollectionEquality()
                .equals(other.currentSlot, currentSlot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldSlot),
      const DeepCollectionEquality().hash(currentSlot));

  @JsonKey(ignore: true)
  @override
  _$$ChangeResheduledSlotStateCopyWith<_$ChangeResheduledSlotState>
      get copyWith => __$$ChangeResheduledSlotStateCopyWithImpl<
          _$ChangeResheduledSlotState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime date, String token)
        getAvailableSlots,
    required TResult Function(DateTime slotTime) changeBookedSlotState,
    required TResult Function(DateTime oldSlot, DateTime currentSlot)
        changeResheduledSlotState,
  }) {
    return changeResheduledSlotState(oldSlot, currentSlot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
  }) {
    return changeResheduledSlotState?.call(oldSlot, currentSlot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime date, String token)?
        getAvailableSlots,
    TResult Function(DateTime slotTime)? changeBookedSlotState,
    TResult Function(DateTime oldSlot, DateTime currentSlot)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (changeResheduledSlotState != null) {
      return changeResheduledSlotState(oldSlot, currentSlot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableSlots value) getAvailableSlots,
    required TResult Function(ChangeBookedSlotState value)
        changeBookedSlotState,
    required TResult Function(ChangeResheduledSlotState value)
        changeResheduledSlotState,
  }) {
    return changeResheduledSlotState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
  }) {
    return changeResheduledSlotState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableSlots value)? getAvailableSlots,
    TResult Function(ChangeBookedSlotState value)? changeBookedSlotState,
    TResult Function(ChangeResheduledSlotState value)?
        changeResheduledSlotState,
    required TResult orElse(),
  }) {
    if (changeResheduledSlotState != null) {
      return changeResheduledSlotState(this);
    }
    return orElse();
  }
}

abstract class ChangeResheduledSlotState implements SlotEvent {
  const factory ChangeResheduledSlotState(
      {required final DateTime oldSlot,
      required final DateTime currentSlot}) = _$ChangeResheduledSlotState;

  DateTime get oldSlot;
  DateTime get currentSlot;
  @JsonKey(ignore: true)
  _$$ChangeResheduledSlotStateCopyWith<_$ChangeResheduledSlotState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SlotState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetchingSuccses => throw _privateConstructorUsedError;
  bool get isFetchingError => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  ShiftModel get shift => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotStateCopyWith<SlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotStateCopyWith<$Res> {
  factory $SlotStateCopyWith(SlotState value, $Res Function(SlotState) then) =
      _$SlotStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isFetchingSuccses,
      bool isFetchingError,
      ErrorModel error,
      ShiftModel shift});

  $ShiftModelCopyWith<$Res> get shift;
}

/// @nodoc
class _$SlotStateCopyWithImpl<$Res> implements $SlotStateCopyWith<$Res> {
  _$SlotStateCopyWithImpl(this._value, this._then);

  final SlotState _value;
  // ignore: unused_field
  final $Res Function(SlotState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFetchingSuccses = freezed,
    Object? isFetchingError = freezed,
    Object? error = freezed,
    Object? shift = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccses: isFetchingSuccses == freezed
          ? _value.isFetchingSuccses
          : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingError: isFetchingError == freezed
          ? _value.isFetchingError
          : isFetchingError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftModel,
    ));
  }

  @override
  $ShiftModelCopyWith<$Res> get shift {
    return $ShiftModelCopyWith<$Res>(_value.shift, (value) {
      return _then(_value.copyWith(shift: value));
    });
  }
}

/// @nodoc
abstract class _$$_SlotStateCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory _$$_SlotStateCopyWith(
          _$_SlotState value, $Res Function(_$_SlotState) then) =
      __$$_SlotStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isFetchingSuccses,
      bool isFetchingError,
      ErrorModel error,
      ShiftModel shift});

  @override
  $ShiftModelCopyWith<$Res> get shift;
}

/// @nodoc
class __$$_SlotStateCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements _$$_SlotStateCopyWith<$Res> {
  __$$_SlotStateCopyWithImpl(
      _$_SlotState _value, $Res Function(_$_SlotState) _then)
      : super(_value, (v) => _then(v as _$_SlotState));

  @override
  _$_SlotState get _value => super._value as _$_SlotState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isFetchingSuccses = freezed,
    Object? isFetchingError = freezed,
    Object? error = freezed,
    Object? shift = freezed,
  }) {
    return _then(_$_SlotState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccses: isFetchingSuccses == freezed
          ? _value.isFetchingSuccses
          : isFetchingSuccses // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingError: isFetchingError == freezed
          ? _value.isFetchingError
          : isFetchingError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftModel,
    ));
  }
}

/// @nodoc

class _$_SlotState implements _SlotState {
  const _$_SlotState(
      {required this.isLoading,
      required this.isFetchingSuccses,
      required this.isFetchingError,
      required this.error,
      required this.shift});

  @override
  final bool isLoading;
  @override
  final bool isFetchingSuccses;
  @override
  final bool isFetchingError;
  @override
  final ErrorModel error;
  @override
  final ShiftModel shift;

  @override
  String toString() {
    return 'SlotState(isLoading: $isLoading, isFetchingSuccses: $isFetchingSuccses, isFetchingError: $isFetchingError, error: $error, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlotState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingSuccses, isFetchingSuccses) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingError, isFetchingError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.shift, shift));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFetchingSuccses),
      const DeepCollectionEquality().hash(isFetchingError),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(shift));

  @JsonKey(ignore: true)
  @override
  _$$_SlotStateCopyWith<_$_SlotState> get copyWith =>
      __$$_SlotStateCopyWithImpl<_$_SlotState>(this, _$identity);
}

abstract class _SlotState implements SlotState {
  const factory _SlotState(
      {required final bool isLoading,
      required final bool isFetchingSuccses,
      required final bool isFetchingError,
      required final ErrorModel error,
      required final ShiftModel shift}) = _$_SlotState;

  @override
  bool get isLoading;
  @override
  bool get isFetchingSuccses;
  @override
  bool get isFetchingError;
  @override
  ErrorModel get error;
  @override
  ShiftModel get shift;
  @override
  @JsonKey(ignore: true)
  _$$_SlotStateCopyWith<_$_SlotState> get copyWith =>
      throw _privateConstructorUsedError;
}
