// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_appointments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyAppointmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String mobileNumber)
        getMyAppointments,
    required TResult Function(MyAppointmentModel appointment)
        storeBokkedApoointment,
    required TResult Function(
            MyAppointmentModel appointment, DateTime cureentSlot)
        changeResheduledAppointmentDetails,
    required TResult Function(int idAppointment, String token)
        cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyAppointments value) getMyAppointments,
    required TResult Function(StoreBokkedApoointment value)
        storeBokkedApoointment,
    required TResult Function(ChangeResheduledAppointmentDetails value)
        changeResheduledAppointmentDetails,
    required TResult Function(CancelAppointment value) cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentsEventCopyWith<$Res> {
  factory $MyAppointmentsEventCopyWith(
          MyAppointmentsEvent value, $Res Function(MyAppointmentsEvent) then) =
      _$MyAppointmentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyAppointmentsEventCopyWithImpl<$Res>
    implements $MyAppointmentsEventCopyWith<$Res> {
  _$MyAppointmentsEventCopyWithImpl(this._value, this._then);

  final MyAppointmentsEvent _value;
  // ignore: unused_field
  final $Res Function(MyAppointmentsEvent) _then;
}

/// @nodoc
abstract class _$$GetMyAppointmentsCopyWith<$Res> {
  factory _$$GetMyAppointmentsCopyWith(
          _$GetMyAppointments value, $Res Function(_$GetMyAppointments) then) =
      __$$GetMyAppointmentsCopyWithImpl<$Res>;
  $Res call({String token, String mobileNumber});
}

/// @nodoc
class __$$GetMyAppointmentsCopyWithImpl<$Res>
    extends _$MyAppointmentsEventCopyWithImpl<$Res>
    implements _$$GetMyAppointmentsCopyWith<$Res> {
  __$$GetMyAppointmentsCopyWithImpl(
      _$GetMyAppointments _value, $Res Function(_$GetMyAppointments) _then)
      : super(_value, (v) => _then(v as _$GetMyAppointments));

  @override
  _$GetMyAppointments get _value => super._value as _$GetMyAppointments;

  @override
  $Res call({
    Object? token = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_$GetMyAppointments(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMyAppointments implements GetMyAppointments {
  const _$GetMyAppointments({required this.token, required this.mobileNumber});

  @override
  final String token;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'MyAppointmentsEvent.getMyAppointments(token: $token, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMyAppointments &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$$GetMyAppointmentsCopyWith<_$GetMyAppointments> get copyWith =>
      __$$GetMyAppointmentsCopyWithImpl<_$GetMyAppointments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String mobileNumber)
        getMyAppointments,
    required TResult Function(MyAppointmentModel appointment)
        storeBokkedApoointment,
    required TResult Function(
            MyAppointmentModel appointment, DateTime cureentSlot)
        changeResheduledAppointmentDetails,
    required TResult Function(int idAppointment, String token)
        cancelAppointment,
  }) {
    return getMyAppointments(token, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
  }) {
    return getMyAppointments?.call(token, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (getMyAppointments != null) {
      return getMyAppointments(token, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyAppointments value) getMyAppointments,
    required TResult Function(StoreBokkedApoointment value)
        storeBokkedApoointment,
    required TResult Function(ChangeResheduledAppointmentDetails value)
        changeResheduledAppointmentDetails,
    required TResult Function(CancelAppointment value) cancelAppointment,
  }) {
    return getMyAppointments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
  }) {
    return getMyAppointments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (getMyAppointments != null) {
      return getMyAppointments(this);
    }
    return orElse();
  }
}

abstract class GetMyAppointments implements MyAppointmentsEvent {
  const factory GetMyAppointments(
      {required final String token,
      required final String mobileNumber}) = _$GetMyAppointments;

  String get token;
  String get mobileNumber;
  @JsonKey(ignore: true)
  _$$GetMyAppointmentsCopyWith<_$GetMyAppointments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreBokkedApoointmentCopyWith<$Res> {
  factory _$$StoreBokkedApoointmentCopyWith(_$StoreBokkedApoointment value,
          $Res Function(_$StoreBokkedApoointment) then) =
      __$$StoreBokkedApoointmentCopyWithImpl<$Res>;
  $Res call({MyAppointmentModel appointment});

  $MyAppointmentModelCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$StoreBokkedApoointmentCopyWithImpl<$Res>
    extends _$MyAppointmentsEventCopyWithImpl<$Res>
    implements _$$StoreBokkedApoointmentCopyWith<$Res> {
  __$$StoreBokkedApoointmentCopyWithImpl(_$StoreBokkedApoointment _value,
      $Res Function(_$StoreBokkedApoointment) _then)
      : super(_value, (v) => _then(v as _$StoreBokkedApoointment));

  @override
  _$StoreBokkedApoointment get _value =>
      super._value as _$StoreBokkedApoointment;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_$StoreBokkedApoointment(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as MyAppointmentModel,
    ));
  }

  @override
  $MyAppointmentModelCopyWith<$Res> get appointment {
    return $MyAppointmentModelCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$StoreBokkedApoointment implements StoreBokkedApoointment {
  const _$StoreBokkedApoointment({required this.appointment});

  @override
  final MyAppointmentModel appointment;

  @override
  String toString() {
    return 'MyAppointmentsEvent.storeBokkedApoointment(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBokkedApoointment &&
            const DeepCollectionEquality()
                .equals(other.appointment, appointment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appointment));

  @JsonKey(ignore: true)
  @override
  _$$StoreBokkedApoointmentCopyWith<_$StoreBokkedApoointment> get copyWith =>
      __$$StoreBokkedApoointmentCopyWithImpl<_$StoreBokkedApoointment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String mobileNumber)
        getMyAppointments,
    required TResult Function(MyAppointmentModel appointment)
        storeBokkedApoointment,
    required TResult Function(
            MyAppointmentModel appointment, DateTime cureentSlot)
        changeResheduledAppointmentDetails,
    required TResult Function(int idAppointment, String token)
        cancelAppointment,
  }) {
    return storeBokkedApoointment(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
  }) {
    return storeBokkedApoointment?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (storeBokkedApoointment != null) {
      return storeBokkedApoointment(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyAppointments value) getMyAppointments,
    required TResult Function(StoreBokkedApoointment value)
        storeBokkedApoointment,
    required TResult Function(ChangeResheduledAppointmentDetails value)
        changeResheduledAppointmentDetails,
    required TResult Function(CancelAppointment value) cancelAppointment,
  }) {
    return storeBokkedApoointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
  }) {
    return storeBokkedApoointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (storeBokkedApoointment != null) {
      return storeBokkedApoointment(this);
    }
    return orElse();
  }
}

abstract class StoreBokkedApoointment implements MyAppointmentsEvent {
  const factory StoreBokkedApoointment(
          {required final MyAppointmentModel appointment}) =
      _$StoreBokkedApoointment;

  MyAppointmentModel get appointment;
  @JsonKey(ignore: true)
  _$$StoreBokkedApoointmentCopyWith<_$StoreBokkedApoointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeResheduledAppointmentDetailsCopyWith<$Res> {
  factory _$$ChangeResheduledAppointmentDetailsCopyWith(
          _$ChangeResheduledAppointmentDetails value,
          $Res Function(_$ChangeResheduledAppointmentDetails) then) =
      __$$ChangeResheduledAppointmentDetailsCopyWithImpl<$Res>;
  $Res call({MyAppointmentModel appointment, DateTime cureentSlot});

  $MyAppointmentModelCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$ChangeResheduledAppointmentDetailsCopyWithImpl<$Res>
    extends _$MyAppointmentsEventCopyWithImpl<$Res>
    implements _$$ChangeResheduledAppointmentDetailsCopyWith<$Res> {
  __$$ChangeResheduledAppointmentDetailsCopyWithImpl(
      _$ChangeResheduledAppointmentDetails _value,
      $Res Function(_$ChangeResheduledAppointmentDetails) _then)
      : super(_value, (v) => _then(v as _$ChangeResheduledAppointmentDetails));

  @override
  _$ChangeResheduledAppointmentDetails get _value =>
      super._value as _$ChangeResheduledAppointmentDetails;

  @override
  $Res call({
    Object? appointment = freezed,
    Object? cureentSlot = freezed,
  }) {
    return _then(_$ChangeResheduledAppointmentDetails(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as MyAppointmentModel,
      cureentSlot: cureentSlot == freezed
          ? _value.cureentSlot
          : cureentSlot // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $MyAppointmentModelCopyWith<$Res> get appointment {
    return $MyAppointmentModelCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$ChangeResheduledAppointmentDetails
    implements ChangeResheduledAppointmentDetails {
  const _$ChangeResheduledAppointmentDetails(
      {required this.appointment, required this.cureentSlot});

  @override
  final MyAppointmentModel appointment;
  @override
  final DateTime cureentSlot;

  @override
  String toString() {
    return 'MyAppointmentsEvent.changeResheduledAppointmentDetails(appointment: $appointment, cureentSlot: $cureentSlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeResheduledAppointmentDetails &&
            const DeepCollectionEquality()
                .equals(other.appointment, appointment) &&
            const DeepCollectionEquality()
                .equals(other.cureentSlot, cureentSlot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appointment),
      const DeepCollectionEquality().hash(cureentSlot));

  @JsonKey(ignore: true)
  @override
  _$$ChangeResheduledAppointmentDetailsCopyWith<
          _$ChangeResheduledAppointmentDetails>
      get copyWith => __$$ChangeResheduledAppointmentDetailsCopyWithImpl<
          _$ChangeResheduledAppointmentDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String mobileNumber)
        getMyAppointments,
    required TResult Function(MyAppointmentModel appointment)
        storeBokkedApoointment,
    required TResult Function(
            MyAppointmentModel appointment, DateTime cureentSlot)
        changeResheduledAppointmentDetails,
    required TResult Function(int idAppointment, String token)
        cancelAppointment,
  }) {
    return changeResheduledAppointmentDetails(appointment, cureentSlot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
  }) {
    return changeResheduledAppointmentDetails?.call(appointment, cureentSlot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (changeResheduledAppointmentDetails != null) {
      return changeResheduledAppointmentDetails(appointment, cureentSlot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyAppointments value) getMyAppointments,
    required TResult Function(StoreBokkedApoointment value)
        storeBokkedApoointment,
    required TResult Function(ChangeResheduledAppointmentDetails value)
        changeResheduledAppointmentDetails,
    required TResult Function(CancelAppointment value) cancelAppointment,
  }) {
    return changeResheduledAppointmentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
  }) {
    return changeResheduledAppointmentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (changeResheduledAppointmentDetails != null) {
      return changeResheduledAppointmentDetails(this);
    }
    return orElse();
  }
}

abstract class ChangeResheduledAppointmentDetails
    implements MyAppointmentsEvent {
  const factory ChangeResheduledAppointmentDetails(
          {required final MyAppointmentModel appointment,
          required final DateTime cureentSlot}) =
      _$ChangeResheduledAppointmentDetails;

  MyAppointmentModel get appointment;
  DateTime get cureentSlot;
  @JsonKey(ignore: true)
  _$$ChangeResheduledAppointmentDetailsCopyWith<
          _$ChangeResheduledAppointmentDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelAppointmentCopyWith<$Res> {
  factory _$$CancelAppointmentCopyWith(
          _$CancelAppointment value, $Res Function(_$CancelAppointment) then) =
      __$$CancelAppointmentCopyWithImpl<$Res>;
  $Res call({int idAppointment, String token});
}

/// @nodoc
class __$$CancelAppointmentCopyWithImpl<$Res>
    extends _$MyAppointmentsEventCopyWithImpl<$Res>
    implements _$$CancelAppointmentCopyWith<$Res> {
  __$$CancelAppointmentCopyWithImpl(
      _$CancelAppointment _value, $Res Function(_$CancelAppointment) _then)
      : super(_value, (v) => _then(v as _$CancelAppointment));

  @override
  _$CancelAppointment get _value => super._value as _$CancelAppointment;

  @override
  $Res call({
    Object? idAppointment = freezed,
    Object? token = freezed,
  }) {
    return _then(_$CancelAppointment(
      idAppointment: idAppointment == freezed
          ? _value.idAppointment
          : idAppointment // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelAppointment implements CancelAppointment {
  const _$CancelAppointment({required this.idAppointment, required this.token});

  @override
  final int idAppointment;
  @override
  final String token;

  @override
  String toString() {
    return 'MyAppointmentsEvent.cancelAppointment(idAppointment: $idAppointment, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelAppointment &&
            const DeepCollectionEquality()
                .equals(other.idAppointment, idAppointment) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idAppointment),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$CancelAppointmentCopyWith<_$CancelAppointment> get copyWith =>
      __$$CancelAppointmentCopyWithImpl<_$CancelAppointment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String mobileNumber)
        getMyAppointments,
    required TResult Function(MyAppointmentModel appointment)
        storeBokkedApoointment,
    required TResult Function(
            MyAppointmentModel appointment, DateTime cureentSlot)
        changeResheduledAppointmentDetails,
    required TResult Function(int idAppointment, String token)
        cancelAppointment,
  }) {
    return cancelAppointment(idAppointment, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
  }) {
    return cancelAppointment?.call(idAppointment, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String mobileNumber)? getMyAppointments,
    TResult Function(MyAppointmentModel appointment)? storeBokkedApoointment,
    TResult Function(MyAppointmentModel appointment, DateTime cureentSlot)?
        changeResheduledAppointmentDetails,
    TResult Function(int idAppointment, String token)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(idAppointment, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyAppointments value) getMyAppointments,
    required TResult Function(StoreBokkedApoointment value)
        storeBokkedApoointment,
    required TResult Function(ChangeResheduledAppointmentDetails value)
        changeResheduledAppointmentDetails,
    required TResult Function(CancelAppointment value) cancelAppointment,
  }) {
    return cancelAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
  }) {
    return cancelAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyAppointments value)? getMyAppointments,
    TResult Function(StoreBokkedApoointment value)? storeBokkedApoointment,
    TResult Function(ChangeResheduledAppointmentDetails value)?
        changeResheduledAppointmentDetails,
    TResult Function(CancelAppointment value)? cancelAppointment,
    required TResult orElse(),
  }) {
    if (cancelAppointment != null) {
      return cancelAppointment(this);
    }
    return orElse();
  }
}

abstract class CancelAppointment implements MyAppointmentsEvent {
  const factory CancelAppointment(
      {required final int idAppointment,
      required final String token}) = _$CancelAppointment;

  int get idAppointment;
  String get token;
  @JsonKey(ignore: true)
  _$$CancelAppointmentCopyWith<_$CancelAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyAppointmentsState {
  bool get isAppointmentsFetching => throw _privateConstructorUsedError;
  bool get isAppointmentsFetchingFailed => throw _privateConstructorUsedError;
  bool get isAppointmentsFetchingSuccess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<DateTime> get monthTimeLineListOfNotConsulted =>
      throw _privateConstructorUsedError;
  List<MyAppointmentModel> get myNotConsultedAppointments =>
      throw _privateConstructorUsedError;
  List<DateTime> get monthTimeLineListOfConsulted =>
      throw _privateConstructorUsedError;
  List<MyAppointmentModel> get myConsultedAppointments =>
      throw _privateConstructorUsedError;
  List<DateTime> get monthTimeLineList => throw _privateConstructorUsedError;
  bool get isAppointmentsCancelationFailed =>
      throw _privateConstructorUsedError;
  bool get isAppointmentsCancelationSuccess =>
      throw _privateConstructorUsedError;
  List<MyAppointmentModel> get myAppointments =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAppointmentsStateCopyWith<MyAppointmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentsStateCopyWith<$Res> {
  factory $MyAppointmentsStateCopyWith(
          MyAppointmentsState value, $Res Function(MyAppointmentsState) then) =
      _$MyAppointmentsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isAppointmentsFetching,
      bool isAppointmentsFetchingFailed,
      bool isAppointmentsFetchingSuccess,
      ErrorModel error,
      List<DateTime> monthTimeLineListOfNotConsulted,
      List<MyAppointmentModel> myNotConsultedAppointments,
      List<DateTime> monthTimeLineListOfConsulted,
      List<MyAppointmentModel> myConsultedAppointments,
      List<DateTime> monthTimeLineList,
      bool isAppointmentsCancelationFailed,
      bool isAppointmentsCancelationSuccess,
      List<MyAppointmentModel> myAppointments});
}

/// @nodoc
class _$MyAppointmentsStateCopyWithImpl<$Res>
    implements $MyAppointmentsStateCopyWith<$Res> {
  _$MyAppointmentsStateCopyWithImpl(this._value, this._then);

  final MyAppointmentsState _value;
  // ignore: unused_field
  final $Res Function(MyAppointmentsState) _then;

  @override
  $Res call({
    Object? isAppointmentsFetching = freezed,
    Object? isAppointmentsFetchingFailed = freezed,
    Object? isAppointmentsFetchingSuccess = freezed,
    Object? error = freezed,
    Object? monthTimeLineListOfNotConsulted = freezed,
    Object? myNotConsultedAppointments = freezed,
    Object? monthTimeLineListOfConsulted = freezed,
    Object? myConsultedAppointments = freezed,
    Object? monthTimeLineList = freezed,
    Object? isAppointmentsCancelationFailed = freezed,
    Object? isAppointmentsCancelationSuccess = freezed,
    Object? myAppointments = freezed,
  }) {
    return _then(_value.copyWith(
      isAppointmentsFetching: isAppointmentsFetching == freezed
          ? _value.isAppointmentsFetching
          : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsFetchingFailed: isAppointmentsFetchingFailed == freezed
          ? _value.isAppointmentsFetchingFailed
          : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsFetchingSuccess: isAppointmentsFetchingSuccess == freezed
          ? _value.isAppointmentsFetchingSuccess
          : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted ==
              freezed
          ? _value.monthTimeLineListOfNotConsulted
          : monthTimeLineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      myNotConsultedAppointments: myNotConsultedAppointments == freezed
          ? _value.myNotConsultedAppointments
          : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
      monthTimeLineListOfConsulted: monthTimeLineListOfConsulted == freezed
          ? _value.monthTimeLineListOfConsulted
          : monthTimeLineListOfConsulted // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      myConsultedAppointments: myConsultedAppointments == freezed
          ? _value.myConsultedAppointments
          : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
      monthTimeLineList: monthTimeLineList == freezed
          ? _value.monthTimeLineList
          : monthTimeLineList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isAppointmentsCancelationFailed: isAppointmentsCancelationFailed ==
              freezed
          ? _value.isAppointmentsCancelationFailed
          : isAppointmentsCancelationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsCancelationSuccess: isAppointmentsCancelationSuccess ==
              freezed
          ? _value.isAppointmentsCancelationSuccess
          : isAppointmentsCancelationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      myAppointments: myAppointments == freezed
          ? _value.myAppointments
          : myAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MyAppointmentStateCopyWith<$Res>
    implements $MyAppointmentsStateCopyWith<$Res> {
  factory _$$_MyAppointmentStateCopyWith(_$_MyAppointmentState value,
          $Res Function(_$_MyAppointmentState) then) =
      __$$_MyAppointmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAppointmentsFetching,
      bool isAppointmentsFetchingFailed,
      bool isAppointmentsFetchingSuccess,
      ErrorModel error,
      List<DateTime> monthTimeLineListOfNotConsulted,
      List<MyAppointmentModel> myNotConsultedAppointments,
      List<DateTime> monthTimeLineListOfConsulted,
      List<MyAppointmentModel> myConsultedAppointments,
      List<DateTime> monthTimeLineList,
      bool isAppointmentsCancelationFailed,
      bool isAppointmentsCancelationSuccess,
      List<MyAppointmentModel> myAppointments});
}

/// @nodoc
class __$$_MyAppointmentStateCopyWithImpl<$Res>
    extends _$MyAppointmentsStateCopyWithImpl<$Res>
    implements _$$_MyAppointmentStateCopyWith<$Res> {
  __$$_MyAppointmentStateCopyWithImpl(
      _$_MyAppointmentState _value, $Res Function(_$_MyAppointmentState) _then)
      : super(_value, (v) => _then(v as _$_MyAppointmentState));

  @override
  _$_MyAppointmentState get _value => super._value as _$_MyAppointmentState;

  @override
  $Res call({
    Object? isAppointmentsFetching = freezed,
    Object? isAppointmentsFetchingFailed = freezed,
    Object? isAppointmentsFetchingSuccess = freezed,
    Object? error = freezed,
    Object? monthTimeLineListOfNotConsulted = freezed,
    Object? myNotConsultedAppointments = freezed,
    Object? monthTimeLineListOfConsulted = freezed,
    Object? myConsultedAppointments = freezed,
    Object? monthTimeLineList = freezed,
    Object? isAppointmentsCancelationFailed = freezed,
    Object? isAppointmentsCancelationSuccess = freezed,
    Object? myAppointments = freezed,
  }) {
    return _then(_$_MyAppointmentState(
      isAppointmentsFetching: isAppointmentsFetching == freezed
          ? _value.isAppointmentsFetching
          : isAppointmentsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsFetchingFailed: isAppointmentsFetchingFailed == freezed
          ? _value.isAppointmentsFetchingFailed
          : isAppointmentsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsFetchingSuccess: isAppointmentsFetchingSuccess == freezed
          ? _value.isAppointmentsFetchingSuccess
          : isAppointmentsFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      monthTimeLineListOfNotConsulted: monthTimeLineListOfNotConsulted ==
              freezed
          ? _value._monthTimeLineListOfNotConsulted
          : monthTimeLineListOfNotConsulted // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      myNotConsultedAppointments: myNotConsultedAppointments == freezed
          ? _value._myNotConsultedAppointments
          : myNotConsultedAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
      monthTimeLineListOfConsulted: monthTimeLineListOfConsulted == freezed
          ? _value._monthTimeLineListOfConsulted
          : monthTimeLineListOfConsulted // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      myConsultedAppointments: myConsultedAppointments == freezed
          ? _value._myConsultedAppointments
          : myConsultedAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
      monthTimeLineList: monthTimeLineList == freezed
          ? _value._monthTimeLineList
          : monthTimeLineList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isAppointmentsCancelationFailed: isAppointmentsCancelationFailed ==
              freezed
          ? _value.isAppointmentsCancelationFailed
          : isAppointmentsCancelationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentsCancelationSuccess: isAppointmentsCancelationSuccess ==
              freezed
          ? _value.isAppointmentsCancelationSuccess
          : isAppointmentsCancelationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      myAppointments: myAppointments == freezed
          ? _value._myAppointments
          : myAppointments // ignore: cast_nullable_to_non_nullable
              as List<MyAppointmentModel>,
    ));
  }
}

/// @nodoc

class _$_MyAppointmentState implements _MyAppointmentState {
  const _$_MyAppointmentState(
      {required this.isAppointmentsFetching,
      required this.isAppointmentsFetchingFailed,
      required this.isAppointmentsFetchingSuccess,
      required this.error,
      required final List<DateTime> monthTimeLineListOfNotConsulted,
      required final List<MyAppointmentModel> myNotConsultedAppointments,
      required final List<DateTime> monthTimeLineListOfConsulted,
      required final List<MyAppointmentModel> myConsultedAppointments,
      required final List<DateTime> monthTimeLineList,
      required this.isAppointmentsCancelationFailed,
      required this.isAppointmentsCancelationSuccess,
      required final List<MyAppointmentModel> myAppointments})
      : _monthTimeLineListOfNotConsulted = monthTimeLineListOfNotConsulted,
        _myNotConsultedAppointments = myNotConsultedAppointments,
        _monthTimeLineListOfConsulted = monthTimeLineListOfConsulted,
        _myConsultedAppointments = myConsultedAppointments,
        _monthTimeLineList = monthTimeLineList,
        _myAppointments = myAppointments;

  @override
  final bool isAppointmentsFetching;
  @override
  final bool isAppointmentsFetchingFailed;
  @override
  final bool isAppointmentsFetchingSuccess;
  @override
  final ErrorModel error;
  final List<DateTime> _monthTimeLineListOfNotConsulted;
  @override
  List<DateTime> get monthTimeLineListOfNotConsulted {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthTimeLineListOfNotConsulted);
  }

  final List<MyAppointmentModel> _myNotConsultedAppointments;
  @override
  List<MyAppointmentModel> get myNotConsultedAppointments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myNotConsultedAppointments);
  }

  final List<DateTime> _monthTimeLineListOfConsulted;
  @override
  List<DateTime> get monthTimeLineListOfConsulted {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthTimeLineListOfConsulted);
  }

  final List<MyAppointmentModel> _myConsultedAppointments;
  @override
  List<MyAppointmentModel> get myConsultedAppointments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myConsultedAppointments);
  }

  final List<DateTime> _monthTimeLineList;
  @override
  List<DateTime> get monthTimeLineList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthTimeLineList);
  }

  @override
  final bool isAppointmentsCancelationFailed;
  @override
  final bool isAppointmentsCancelationSuccess;
  final List<MyAppointmentModel> _myAppointments;
  @override
  List<MyAppointmentModel> get myAppointments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myAppointments);
  }

  @override
  String toString() {
    return 'MyAppointmentsState(isAppointmentsFetching: $isAppointmentsFetching, isAppointmentsFetchingFailed: $isAppointmentsFetchingFailed, isAppointmentsFetchingSuccess: $isAppointmentsFetchingSuccess, error: $error, monthTimeLineListOfNotConsulted: $monthTimeLineListOfNotConsulted, myNotConsultedAppointments: $myNotConsultedAppointments, monthTimeLineListOfConsulted: $monthTimeLineListOfConsulted, myConsultedAppointments: $myConsultedAppointments, monthTimeLineList: $monthTimeLineList, isAppointmentsCancelationFailed: $isAppointmentsCancelationFailed, isAppointmentsCancelationSuccess: $isAppointmentsCancelationSuccess, myAppointments: $myAppointments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAppointmentState &&
            const DeepCollectionEquality()
                .equals(other.isAppointmentsFetching, isAppointmentsFetching) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentsFetchingFailed,
                isAppointmentsFetchingFailed) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentsFetchingSuccess,
                isAppointmentsFetchingSuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(
                other._monthTimeLineListOfNotConsulted,
                _monthTimeLineListOfNotConsulted) &&
            const DeepCollectionEquality().equals(
                other._myNotConsultedAppointments,
                _myNotConsultedAppointments) &&
            const DeepCollectionEquality().equals(
                other._monthTimeLineListOfConsulted,
                _monthTimeLineListOfConsulted) &&
            const DeepCollectionEquality().equals(
                other._myConsultedAppointments, _myConsultedAppointments) &&
            const DeepCollectionEquality()
                .equals(other._monthTimeLineList, _monthTimeLineList) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentsCancelationFailed,
                isAppointmentsCancelationFailed) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentsCancelationSuccess,
                isAppointmentsCancelationSuccess) &&
            const DeepCollectionEquality()
                .equals(other._myAppointments, _myAppointments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAppointmentsFetching),
      const DeepCollectionEquality().hash(isAppointmentsFetchingFailed),
      const DeepCollectionEquality().hash(isAppointmentsFetchingSuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_monthTimeLineListOfNotConsulted),
      const DeepCollectionEquality().hash(_myNotConsultedAppointments),
      const DeepCollectionEquality().hash(_monthTimeLineListOfConsulted),
      const DeepCollectionEquality().hash(_myConsultedAppointments),
      const DeepCollectionEquality().hash(_monthTimeLineList),
      const DeepCollectionEquality().hash(isAppointmentsCancelationFailed),
      const DeepCollectionEquality().hash(isAppointmentsCancelationSuccess),
      const DeepCollectionEquality().hash(_myAppointments));

  @JsonKey(ignore: true)
  @override
  _$$_MyAppointmentStateCopyWith<_$_MyAppointmentState> get copyWith =>
      __$$_MyAppointmentStateCopyWithImpl<_$_MyAppointmentState>(
          this, _$identity);
}

abstract class _MyAppointmentState implements MyAppointmentsState {
  const factory _MyAppointmentState(
          {required final bool isAppointmentsFetching,
          required final bool isAppointmentsFetchingFailed,
          required final bool isAppointmentsFetchingSuccess,
          required final ErrorModel error,
          required final List<DateTime> monthTimeLineListOfNotConsulted,
          required final List<MyAppointmentModel> myNotConsultedAppointments,
          required final List<DateTime> monthTimeLineListOfConsulted,
          required final List<MyAppointmentModel> myConsultedAppointments,
          required final List<DateTime> monthTimeLineList,
          required final bool isAppointmentsCancelationFailed,
          required final bool isAppointmentsCancelationSuccess,
          required final List<MyAppointmentModel> myAppointments}) =
      _$_MyAppointmentState;

  @override
  bool get isAppointmentsFetching;
  @override
  bool get isAppointmentsFetchingFailed;
  @override
  bool get isAppointmentsFetchingSuccess;
  @override
  ErrorModel get error;
  @override
  List<DateTime> get monthTimeLineListOfNotConsulted;
  @override
  List<MyAppointmentModel> get myNotConsultedAppointments;
  @override
  List<DateTime> get monthTimeLineListOfConsulted;
  @override
  List<MyAppointmentModel> get myConsultedAppointments;
  @override
  List<DateTime> get monthTimeLineList;
  @override
  bool get isAppointmentsCancelationFailed;
  @override
  bool get isAppointmentsCancelationSuccess;
  @override
  List<MyAppointmentModel> get myAppointments;
  @override
  @JsonKey(ignore: true)
  _$$_MyAppointmentStateCopyWith<_$_MyAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
