// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentEvent {
  DateTime get appointmentDateTime => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)
        bookNewAppointment,
    required TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)
        resheduleAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookNewAppointment value) bookNewAppointment,
    required TResult Function(ResheduleAppointment value) resheduleAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentEventCopyWith<AppointmentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res>;
  $Res call({DateTime appointmentDateTime, String token});
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  final AppointmentEvent _value;
  // ignore: unused_field
  final $Res Function(AppointmentEvent) _then;

  @override
  $Res call({
    Object? appointmentDateTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$BookNewAppointmentCopyWith<$Res>
    implements $AppointmentEventCopyWith<$Res> {
  factory _$$BookNewAppointmentCopyWith(_$BookNewAppointment value,
          $Res Function(_$BookNewAppointment) then) =
      __$$BookNewAppointmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idDoctor,
      DateTime appointmentDateTime,
      String mobileNo,
      int idMember,
      String token});
}

/// @nodoc
class __$$BookNewAppointmentCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res>
    implements _$$BookNewAppointmentCopyWith<$Res> {
  __$$BookNewAppointmentCopyWithImpl(
      _$BookNewAppointment _value, $Res Function(_$BookNewAppointment) _then)
      : super(_value, (v) => _then(v as _$BookNewAppointment));

  @override
  _$BookNewAppointment get _value => super._value as _$BookNewAppointment;

  @override
  $Res call({
    Object? idDoctor = freezed,
    Object? appointmentDateTime = freezed,
    Object? mobileNo = freezed,
    Object? idMember = freezed,
    Object? token = freezed,
  }) {
    return _then(_$BookNewAppointment(
      idDoctor: idDoctor == freezed
          ? _value.idDoctor
          : idDoctor // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mobileNo: mobileNo == freezed
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      idMember: idMember == freezed
          ? _value.idMember
          : idMember // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookNewAppointment implements BookNewAppointment {
  const _$BookNewAppointment(
      {required this.idDoctor,
      required this.appointmentDateTime,
      required this.mobileNo,
      required this.idMember,
      required this.token});

  @override
  final int idDoctor;
  @override
  final DateTime appointmentDateTime;
  @override
  final String mobileNo;
  @override
  final int idMember;
  @override
  final String token;

  @override
  String toString() {
    return 'AppointmentEvent.bookNewAppointment(idDoctor: $idDoctor, appointmentDateTime: $appointmentDateTime, mobileNo: $mobileNo, idMember: $idMember, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookNewAppointment &&
            const DeepCollectionEquality().equals(other.idDoctor, idDoctor) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDateTime, appointmentDateTime) &&
            const DeepCollectionEquality().equals(other.mobileNo, mobileNo) &&
            const DeepCollectionEquality().equals(other.idMember, idMember) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idDoctor),
      const DeepCollectionEquality().hash(appointmentDateTime),
      const DeepCollectionEquality().hash(mobileNo),
      const DeepCollectionEquality().hash(idMember),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$BookNewAppointmentCopyWith<_$BookNewAppointment> get copyWith =>
      __$$BookNewAppointmentCopyWithImpl<_$BookNewAppointment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)
        bookNewAppointment,
    required TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)
        resheduleAppointment,
  }) {
    return bookNewAppointment(
        idDoctor, appointmentDateTime, mobileNo, idMember, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
  }) {
    return bookNewAppointment?.call(
        idDoctor, appointmentDateTime, mobileNo, idMember, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
    required TResult orElse(),
  }) {
    if (bookNewAppointment != null) {
      return bookNewAppointment(
          idDoctor, appointmentDateTime, mobileNo, idMember, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookNewAppointment value) bookNewAppointment,
    required TResult Function(ResheduleAppointment value) resheduleAppointment,
  }) {
    return bookNewAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
  }) {
    return bookNewAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
    required TResult orElse(),
  }) {
    if (bookNewAppointment != null) {
      return bookNewAppointment(this);
    }
    return orElse();
  }
}

abstract class BookNewAppointment implements AppointmentEvent {
  const factory BookNewAppointment(
      {required final int idDoctor,
      required final DateTime appointmentDateTime,
      required final String mobileNo,
      required final int idMember,
      required final String token}) = _$BookNewAppointment;

  int get idDoctor;
  @override
  DateTime get appointmentDateTime;
  String get mobileNo;
  int get idMember;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$BookNewAppointmentCopyWith<_$BookNewAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResheduleAppointmentCopyWith<$Res>
    implements $AppointmentEventCopyWith<$Res> {
  factory _$$ResheduleAppointmentCopyWith(_$ResheduleAppointment value,
          $Res Function(_$ResheduleAppointment) then) =
      __$$ResheduleAppointmentCopyWithImpl<$Res>;
  @override
  $Res call({int idAppointment, DateTime appointmentDateTime, String token});
}

/// @nodoc
class __$$ResheduleAppointmentCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res>
    implements _$$ResheduleAppointmentCopyWith<$Res> {
  __$$ResheduleAppointmentCopyWithImpl(_$ResheduleAppointment _value,
      $Res Function(_$ResheduleAppointment) _then)
      : super(_value, (v) => _then(v as _$ResheduleAppointment));

  @override
  _$ResheduleAppointment get _value => super._value as _$ResheduleAppointment;

  @override
  $Res call({
    Object? idAppointment = freezed,
    Object? appointmentDateTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_$ResheduleAppointment(
      idAppointment: idAppointment == freezed
          ? _value.idAppointment
          : idAppointment // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentDateTime: appointmentDateTime == freezed
          ? _value.appointmentDateTime
          : appointmentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResheduleAppointment implements ResheduleAppointment {
  const _$ResheduleAppointment(
      {required this.idAppointment,
      required this.appointmentDateTime,
      required this.token});

  @override
  final int idAppointment;
  @override
  final DateTime appointmentDateTime;
  @override
  final String token;

  @override
  String toString() {
    return 'AppointmentEvent.resheduleAppointment(idAppointment: $idAppointment, appointmentDateTime: $appointmentDateTime, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResheduleAppointment &&
            const DeepCollectionEquality()
                .equals(other.idAppointment, idAppointment) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDateTime, appointmentDateTime) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idAppointment),
      const DeepCollectionEquality().hash(appointmentDateTime),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$ResheduleAppointmentCopyWith<_$ResheduleAppointment> get copyWith =>
      __$$ResheduleAppointmentCopyWithImpl<_$ResheduleAppointment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)
        bookNewAppointment,
    required TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)
        resheduleAppointment,
  }) {
    return resheduleAppointment(idAppointment, appointmentDateTime, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
  }) {
    return resheduleAppointment?.call(
        idAppointment, appointmentDateTime, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idDoctor, DateTime appointmentDateTime,
            String mobileNo, int idMember, String token)?
        bookNewAppointment,
    TResult Function(
            int idAppointment, DateTime appointmentDateTime, String token)?
        resheduleAppointment,
    required TResult orElse(),
  }) {
    if (resheduleAppointment != null) {
      return resheduleAppointment(idAppointment, appointmentDateTime, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookNewAppointment value) bookNewAppointment,
    required TResult Function(ResheduleAppointment value) resheduleAppointment,
  }) {
    return resheduleAppointment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
  }) {
    return resheduleAppointment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookNewAppointment value)? bookNewAppointment,
    TResult Function(ResheduleAppointment value)? resheduleAppointment,
    required TResult orElse(),
  }) {
    if (resheduleAppointment != null) {
      return resheduleAppointment(this);
    }
    return orElse();
  }
}

abstract class ResheduleAppointment implements AppointmentEvent {
  const factory ResheduleAppointment(
      {required final int idAppointment,
      required final DateTime appointmentDateTime,
      required final String token}) = _$ResheduleAppointment;

  int get idAppointment;
  @override
  DateTime get appointmentDateTime;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ResheduleAppointmentCopyWith<_$ResheduleAppointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAppointmentSavingSuccses => throw _privateConstructorUsedError;
  bool get isAppointmentSavingFailure => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  AppointmentModel? get appointmentDetails =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isAppointmentSavingSuccses,
      bool isAppointmentSavingFailure,
      ErrorModel error,
      AppointmentModel? appointmentDetails});

  $AppointmentModelCopyWith<$Res>? get appointmentDetails;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  final AppointmentState _value;
  // ignore: unused_field
  final $Res Function(AppointmentState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAppointmentSavingSuccses = freezed,
    Object? isAppointmentSavingFailure = freezed,
    Object? error = freezed,
    Object? appointmentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentSavingSuccses: isAppointmentSavingSuccses == freezed
          ? _value.isAppointmentSavingSuccses
          : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentSavingFailure: isAppointmentSavingFailure == freezed
          ? _value.isAppointmentSavingFailure
          : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      appointmentDetails: appointmentDetails == freezed
          ? _value.appointmentDetails
          : appointmentDetails // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
    ));
  }

  @override
  $AppointmentModelCopyWith<$Res>? get appointmentDetails {
    if (_value.appointmentDetails == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_value.appointmentDetails!, (value) {
      return _then(_value.copyWith(appointmentDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppointmentStateCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$_AppointmentStateCopyWith(
          _$_AppointmentState value, $Res Function(_$_AppointmentState) then) =
      __$$_AppointmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isAppointmentSavingSuccses,
      bool isAppointmentSavingFailure,
      ErrorModel error,
      AppointmentModel? appointmentDetails});

  @override
  $AppointmentModelCopyWith<$Res>? get appointmentDetails;
}

/// @nodoc
class __$$_AppointmentStateCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res>
    implements _$$_AppointmentStateCopyWith<$Res> {
  __$$_AppointmentStateCopyWithImpl(
      _$_AppointmentState _value, $Res Function(_$_AppointmentState) _then)
      : super(_value, (v) => _then(v as _$_AppointmentState));

  @override
  _$_AppointmentState get _value => super._value as _$_AppointmentState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAppointmentSavingSuccses = freezed,
    Object? isAppointmentSavingFailure = freezed,
    Object? error = freezed,
    Object? appointmentDetails = freezed,
  }) {
    return _then(_$_AppointmentState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentSavingSuccses: isAppointmentSavingSuccses == freezed
          ? _value.isAppointmentSavingSuccses
          : isAppointmentSavingSuccses // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppointmentSavingFailure: isAppointmentSavingFailure == freezed
          ? _value.isAppointmentSavingFailure
          : isAppointmentSavingFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      appointmentDetails: appointmentDetails == freezed
          ? _value.appointmentDetails
          : appointmentDetails // ignore: cast_nullable_to_non_nullable
              as AppointmentModel?,
    ));
  }
}

/// @nodoc

class _$_AppointmentState implements _AppointmentState {
  const _$_AppointmentState(
      {required this.isLoading,
      required this.isAppointmentSavingSuccses,
      required this.isAppointmentSavingFailure,
      required this.error,
      required this.appointmentDetails});

  @override
  final bool isLoading;
  @override
  final bool isAppointmentSavingSuccses;
  @override
  final bool isAppointmentSavingFailure;
  @override
  final ErrorModel error;
  @override
  final AppointmentModel? appointmentDetails;

  @override
  String toString() {
    return 'AppointmentState(isLoading: $isLoading, isAppointmentSavingSuccses: $isAppointmentSavingSuccses, isAppointmentSavingFailure: $isAppointmentSavingFailure, error: $error, appointmentDetails: $appointmentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentSavingSuccses, isAppointmentSavingSuccses) &&
            const DeepCollectionEquality().equals(
                other.isAppointmentSavingFailure, isAppointmentSavingFailure) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.appointmentDetails, appointmentDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isAppointmentSavingSuccses),
      const DeepCollectionEquality().hash(isAppointmentSavingFailure),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(appointmentDetails));

  @JsonKey(ignore: true)
  @override
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      __$$_AppointmentStateCopyWithImpl<_$_AppointmentState>(this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  const factory _AppointmentState(
          {required final bool isLoading,
          required final bool isAppointmentSavingSuccses,
          required final bool isAppointmentSavingFailure,
          required final ErrorModel error,
          required final AppointmentModel? appointmentDetails}) =
      _$_AppointmentState;

  @override
  bool get isLoading;
  @override
  bool get isAppointmentSavingSuccses;
  @override
  bool get isAppointmentSavingFailure;
  @override
  ErrorModel get error;
  @override
  AppointmentModel? get appointmentDetails;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
