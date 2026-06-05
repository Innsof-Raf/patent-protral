// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpVerificationEvent {
  String get mobileNumber => throw _privateConstructorUsedError;
  String get idOtp => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String idOtp, String otp)
        verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber, String idOtp, String otp)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String idOtp, String otp)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyOtp value) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyOtp value)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationEventCopyWith<OtpVerificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationEventCopyWith<$Res> {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value,
          $Res Function(OtpVerificationEvent) then) =
      _$OtpVerificationEventCopyWithImpl<$Res>;
  $Res call({String mobileNumber, String idOtp, String otp});
}

/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._value, this._then);

  final OtpVerificationEvent _value;
  // ignore: unused_field
  final $Res Function(OtpVerificationEvent) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? idOtp = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idOtp: idOtp == freezed
          ? _value.idOtp
          : idOtp // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$VerifyOtpCopyWith<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  factory _$$VerifyOtpCopyWith(
          _$VerifyOtp value, $Res Function(_$VerifyOtp) then) =
      __$$VerifyOtpCopyWithImpl<$Res>;
  @override
  $Res call({String mobileNumber, String idOtp, String otp});
}

/// @nodoc
class __$$VerifyOtpCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$$VerifyOtpCopyWith<$Res> {
  __$$VerifyOtpCopyWithImpl(
      _$VerifyOtp _value, $Res Function(_$VerifyOtp) _then)
      : super(_value, (v) => _then(v as _$VerifyOtp));

  @override
  _$VerifyOtp get _value => super._value as _$VerifyOtp;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? idOtp = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$VerifyOtp(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      idOtp: idOtp == freezed
          ? _value.idOtp
          : idOtp // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtp implements VerifyOtp {
  const _$VerifyOtp(
      {required this.mobileNumber, required this.idOtp, required this.otp});

  @override
  final String mobileNumber;
  @override
  final String idOtp;
  @override
  final String otp;

  @override
  String toString() {
    return 'OtpVerificationEvent.verifyOtp(mobileNumber: $mobileNumber, idOtp: $idOtp, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtp &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.idOtp, idOtp) &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(idOtp),
      const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$$VerifyOtpCopyWith<_$VerifyOtp> get copyWith =>
      __$$VerifyOtpCopyWithImpl<_$VerifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String idOtp, String otp)
        verifyOtp,
  }) {
    return verifyOtp(mobileNumber, idOtp, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber, String idOtp, String otp)? verifyOtp,
  }) {
    return verifyOtp?.call(mobileNumber, idOtp, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String idOtp, String otp)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(mobileNumber, idOtp, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyOtp value) verifyOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyOtp value)? verifyOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements OtpVerificationEvent {
  const factory VerifyOtp(
      {required final String mobileNumber,
      required final String idOtp,
      required final String otp}) = _$VerifyOtp;

  @override
  String get mobileNumber;
  @override
  String get idOtp;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpCopyWith<_$VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpVerificationState {
  bool get isVerifying => throw _privateConstructorUsedError;
  bool get isVerifyingFailed => throw _privateConstructorUsedError;
  bool get isVerifyingSuccess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isVerifying,
      bool isVerifyingFailed,
      bool isVerifyingSuccess,
      ErrorModel error,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  final OtpVerificationState _value;
  // ignore: unused_field
  final $Res Function(OtpVerificationState) _then;

  @override
  $Res call({
    Object? isVerifying = freezed,
    Object? isVerifyingFailed = freezed,
    Object? isVerifyingSuccess = freezed,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isVerifying: isVerifying == freezed
          ? _value.isVerifying
          : isVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingFailed: isVerifyingFailed == freezed
          ? _value.isVerifyingFailed
          : isVerifyingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingSuccess: isVerifyingSuccess == freezed
          ? _value.isVerifyingSuccess
          : isVerifyingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_OtpVerificationStateCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$_OtpVerificationStateCopyWith(_$_OtpVerificationState value,
          $Res Function(_$_OtpVerificationState) then) =
      __$$_OtpVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isVerifying,
      bool isVerifyingFailed,
      bool isVerifyingSuccess,
      ErrorModel error,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_OtpVerificationStateCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res>
    implements _$$_OtpVerificationStateCopyWith<$Res> {
  __$$_OtpVerificationStateCopyWithImpl(_$_OtpVerificationState _value,
      $Res Function(_$_OtpVerificationState) _then)
      : super(_value, (v) => _then(v as _$_OtpVerificationState));

  @override
  _$_OtpVerificationState get _value => super._value as _$_OtpVerificationState;

  @override
  $Res call({
    Object? isVerifying = freezed,
    Object? isVerifyingFailed = freezed,
    Object? isVerifyingSuccess = freezed,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_OtpVerificationState(
      isVerifying: isVerifying == freezed
          ? _value.isVerifying
          : isVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingFailed: isVerifyingFailed == freezed
          ? _value.isVerifyingFailed
          : isVerifyingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingSuccess: isVerifyingSuccess == freezed
          ? _value.isVerifyingSuccess
          : isVerifyingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_OtpVerificationState implements _OtpVerificationState {
  const _$_OtpVerificationState(
      {required this.isVerifying,
      required this.isVerifyingFailed,
      required this.isVerifyingSuccess,
      required this.error,
      required this.user});

  @override
  final bool isVerifying;
  @override
  final bool isVerifyingFailed;
  @override
  final bool isVerifyingSuccess;
  @override
  final ErrorModel error;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'OtpVerificationState(isVerifying: $isVerifying, isVerifyingFailed: $isVerifyingFailed, isVerifyingSuccess: $isVerifyingSuccess, error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpVerificationState &&
            const DeepCollectionEquality()
                .equals(other.isVerifying, isVerifying) &&
            const DeepCollectionEquality()
                .equals(other.isVerifyingFailed, isVerifyingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isVerifyingSuccess, isVerifyingSuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isVerifying),
      const DeepCollectionEquality().hash(isVerifyingFailed),
      const DeepCollectionEquality().hash(isVerifyingSuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_OtpVerificationStateCopyWith<_$_OtpVerificationState> get copyWith =>
      __$$_OtpVerificationStateCopyWithImpl<_$_OtpVerificationState>(
          this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
      {required final bool isVerifying,
      required final bool isVerifyingFailed,
      required final bool isVerifyingSuccess,
      required final ErrorModel error,
      required final UserModel? user}) = _$_OtpVerificationState;

  @override
  bool get isVerifying;
  @override
  bool get isVerifyingFailed;
  @override
  bool get isVerifyingSuccess;
  @override
  ErrorModel get error;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_OtpVerificationStateCopyWith<_$_OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
