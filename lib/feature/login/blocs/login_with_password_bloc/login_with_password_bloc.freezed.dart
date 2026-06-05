// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_with_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginWithPasswordEvent {
  String get mobileNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password)
        loginWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? loginWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? loginWithPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithPassword value) loginWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithPassword value)? loginWithPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginWithPasswordEventCopyWith<LoginWithPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWithPasswordEventCopyWith<$Res> {
  factory $LoginWithPasswordEventCopyWith(LoginWithPasswordEvent value,
          $Res Function(LoginWithPasswordEvent) then) =
      _$LoginWithPasswordEventCopyWithImpl<$Res>;
  $Res call({String mobileNumber, String password});
}

/// @nodoc
class _$LoginWithPasswordEventCopyWithImpl<$Res>
    implements $LoginWithPasswordEventCopyWith<$Res> {
  _$LoginWithPasswordEventCopyWithImpl(this._value, this._then);

  final LoginWithPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(LoginWithPasswordEvent) _then;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$LoginWithPasswordCopyWith<$Res>
    implements $LoginWithPasswordEventCopyWith<$Res> {
  factory _$$LoginWithPasswordCopyWith(
          _$LoginWithPassword value, $Res Function(_$LoginWithPassword) then) =
      __$$LoginWithPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String mobileNumber, String password});
}

/// @nodoc
class __$$LoginWithPasswordCopyWithImpl<$Res>
    extends _$LoginWithPasswordEventCopyWithImpl<$Res>
    implements _$$LoginWithPasswordCopyWith<$Res> {
  __$$LoginWithPasswordCopyWithImpl(
      _$LoginWithPassword _value, $Res Function(_$LoginWithPassword) _then)
      : super(_value, (v) => _then(v as _$LoginWithPassword));

  @override
  _$LoginWithPassword get _value => super._value as _$LoginWithPassword;

  @override
  $Res call({
    Object? mobileNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginWithPassword(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithPassword implements LoginWithPassword {
  const _$LoginWithPassword(
      {required this.mobileNumber, required this.password});

  @override
  final String mobileNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginWithPasswordEvent.loginWithPassword(mobileNumber: $mobileNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithPassword &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LoginWithPasswordCopyWith<_$LoginWithPassword> get copyWith =>
      __$$LoginWithPasswordCopyWithImpl<_$LoginWithPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String password)
        loginWithPassword,
  }) {
    return loginWithPassword(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? loginWithPassword,
  }) {
    return loginWithPassword?.call(mobileNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String password)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword(mobileNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithPassword value) loginWithPassword,
  }) {
    return loginWithPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginWithPassword value)? loginWithPassword,
  }) {
    return loginWithPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithPassword value)? loginWithPassword,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithPassword implements LoginWithPasswordEvent {
  const factory LoginWithPassword(
      {required final String mobileNumber,
      required final String password}) = _$LoginWithPassword;

  @override
  String get mobileNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginWithPasswordCopyWith<_$LoginWithPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginWithPasswordState {
  bool get isLogingin => throw _privateConstructorUsedError;
  bool get isLoginFailed => throw _privateConstructorUsedError;
  bool get isLoginSucces => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginWithPasswordStateCopyWith<LoginWithPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWithPasswordStateCopyWith<$Res> {
  factory $LoginWithPasswordStateCopyWith(LoginWithPasswordState value,
          $Res Function(LoginWithPasswordState) then) =
      _$LoginWithPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLogingin,
      bool isLoginFailed,
      bool isLoginSucces,
      ErrorModel error,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginWithPasswordStateCopyWithImpl<$Res>
    implements $LoginWithPasswordStateCopyWith<$Res> {
  _$LoginWithPasswordStateCopyWithImpl(this._value, this._then);

  final LoginWithPasswordState _value;
  // ignore: unused_field
  final $Res Function(LoginWithPasswordState) _then;

  @override
  $Res call({
    Object? isLogingin = freezed,
    Object? isLoginFailed = freezed,
    Object? isLoginSucces = freezed,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLogingin: isLogingin == freezed
          ? _value.isLogingin
          : isLogingin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginFailed: isLoginFailed == freezed
          ? _value.isLoginFailed
          : isLoginFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSucces: isLoginSucces == freezed
          ? _value.isLoginSucces
          : isLoginSucces // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LoginWithPasswordStateCopyWith<$Res>
    implements $LoginWithPasswordStateCopyWith<$Res> {
  factory _$$_LoginWithPasswordStateCopyWith(_$_LoginWithPasswordState value,
          $Res Function(_$_LoginWithPasswordState) then) =
      __$$_LoginWithPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLogingin,
      bool isLoginFailed,
      bool isLoginSucces,
      ErrorModel error,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginWithPasswordStateCopyWithImpl<$Res>
    extends _$LoginWithPasswordStateCopyWithImpl<$Res>
    implements _$$_LoginWithPasswordStateCopyWith<$Res> {
  __$$_LoginWithPasswordStateCopyWithImpl(_$_LoginWithPasswordState _value,
      $Res Function(_$_LoginWithPasswordState) _then)
      : super(_value, (v) => _then(v as _$_LoginWithPasswordState));

  @override
  _$_LoginWithPasswordState get _value =>
      super._value as _$_LoginWithPasswordState;

  @override
  $Res call({
    Object? isLogingin = freezed,
    Object? isLoginFailed = freezed,
    Object? isLoginSucces = freezed,
    Object? error = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_LoginWithPasswordState(
      isLogingin: isLogingin == freezed
          ? _value.isLogingin
          : isLogingin // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginFailed: isLoginFailed == freezed
          ? _value.isLoginFailed
          : isLoginFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginSucces: isLoginSucces == freezed
          ? _value.isLoginSucces
          : isLoginSucces // ignore: cast_nullable_to_non_nullable
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

class _$_LoginWithPasswordState implements _LoginWithPasswordState {
  const _$_LoginWithPasswordState(
      {required this.isLogingin,
      required this.isLoginFailed,
      required this.isLoginSucces,
      required this.error,
      required this.user});

  @override
  final bool isLogingin;
  @override
  final bool isLoginFailed;
  @override
  final bool isLoginSucces;
  @override
  final ErrorModel error;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'LoginWithPasswordState(isLogingin: $isLogingin, isLoginFailed: $isLoginFailed, isLoginSucces: $isLoginSucces, error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithPasswordState &&
            const DeepCollectionEquality()
                .equals(other.isLogingin, isLogingin) &&
            const DeepCollectionEquality()
                .equals(other.isLoginFailed, isLoginFailed) &&
            const DeepCollectionEquality()
                .equals(other.isLoginSucces, isLoginSucces) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLogingin),
      const DeepCollectionEquality().hash(isLoginFailed),
      const DeepCollectionEquality().hash(isLoginSucces),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_LoginWithPasswordStateCopyWith<_$_LoginWithPasswordState> get copyWith =>
      __$$_LoginWithPasswordStateCopyWithImpl<_$_LoginWithPasswordState>(
          this, _$identity);
}

abstract class _LoginWithPasswordState implements LoginWithPasswordState {
  const factory _LoginWithPasswordState(
      {required final bool isLogingin,
      required final bool isLoginFailed,
      required final bool isLoginSucces,
      required final ErrorModel error,
      required final UserModel? user}) = _$_LoginWithPasswordState;

  @override
  bool get isLogingin;
  @override
  bool get isLoginFailed;
  @override
  bool get isLoginSucces;
  @override
  ErrorModel get error;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginWithPasswordStateCopyWith<_$_LoginWithPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
