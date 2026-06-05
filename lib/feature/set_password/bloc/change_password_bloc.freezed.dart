// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  int get idUser => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
  $Res call(
      {int idUser, String mobileNumber, String newPassword, String token});
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;

  @override
  $Res call({
    Object? idUser = freezed,
    Object? mobileNumber = freezed,
    Object? newPassword = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ChangePasswordCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory _$$ChangePasswordCopyWith(
          _$ChangePassword value, $Res Function(_$ChangePassword) then) =
      __$$ChangePasswordCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idUser, String mobileNumber, String newPassword, String token});
}

/// @nodoc
class __$$ChangePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$$ChangePasswordCopyWith<$Res> {
  __$$ChangePasswordCopyWithImpl(
      _$ChangePassword _value, $Res Function(_$ChangePassword) _then)
      : super(_value, (v) => _then(v as _$ChangePassword));

  @override
  _$ChangePassword get _value => super._value as _$ChangePassword;

  @override
  $Res call({
    Object? idUser = freezed,
    Object? mobileNumber = freezed,
    Object? newPassword = freezed,
    Object? token = freezed,
  }) {
    return _then(_$ChangePassword(
      idUser: idUser == freezed
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePassword implements ChangePassword {
  const _$ChangePassword(
      {required this.idUser,
      required this.mobileNumber,
      required this.newPassword,
      required this.token});

  @override
  final int idUser;
  @override
  final String mobileNumber;
  @override
  final String newPassword;
  @override
  final String token;

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword(idUser: $idUser, mobileNumber: $mobileNumber, newPassword: $newPassword, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePassword &&
            const DeepCollectionEquality().equals(other.idUser, idUser) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idUser),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      __$$ChangePasswordCopyWithImpl<_$ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)
        changePassword,
  }) {
    return changePassword(idUser, mobileNumber, newPassword, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)?
        changePassword,
  }) {
    return changePassword?.call(idUser, mobileNumber, newPassword, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int idUser, String mobileNumber, String newPassword, String token)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(idUser, mobileNumber, newPassword, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements ChangePasswordEvent {
  const factory ChangePassword(
      {required final int idUser,
      required final String mobileNumber,
      required final String newPassword,
      required final String token}) = _$ChangePassword;

  @override
  int get idUser;
  @override
  String get mobileNumber;
  @override
  String get newPassword;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangePasswordState {
  bool get isPasswordChnaging => throw _privateConstructorUsedError;
  bool get isPasswordChangingFailed => throw _privateConstructorUsedError;
  bool get isPasswordChangingSucces => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPasswordChnaging,
      bool isPasswordChangingFailed,
      bool isPasswordChangingSucces,
      ErrorModel error});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? isPasswordChnaging = freezed,
    Object? isPasswordChangingFailed = freezed,
    Object? isPasswordChangingSucces = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isPasswordChnaging: isPasswordChnaging == freezed
          ? _value.isPasswordChnaging
          : isPasswordChnaging // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordChangingFailed: isPasswordChangingFailed == freezed
          ? _value.isPasswordChangingFailed
          : isPasswordChangingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordChangingSucces: isPasswordChangingSucces == freezed
          ? _value.isPasswordChangingSucces
          : isPasswordChangingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPasswordChnaging,
      bool isPasswordChangingFailed,
      bool isPasswordChangingSucces,
      ErrorModel error});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordState));

  @override
  _$_ChangePasswordState get _value => super._value as _$_ChangePasswordState;

  @override
  $Res call({
    Object? isPasswordChnaging = freezed,
    Object? isPasswordChangingFailed = freezed,
    Object? isPasswordChangingSucces = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ChangePasswordState(
      isPasswordChnaging: isPasswordChnaging == freezed
          ? _value.isPasswordChnaging
          : isPasswordChnaging // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordChangingFailed: isPasswordChangingFailed == freezed
          ? _value.isPasswordChangingFailed
          : isPasswordChangingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordChangingSucces: isPasswordChangingSucces == freezed
          ? _value.isPasswordChangingSucces
          : isPasswordChangingSucces // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.isPasswordChnaging,
      required this.isPasswordChangingFailed,
      required this.isPasswordChangingSucces,
      required this.error});

  @override
  final bool isPasswordChnaging;
  @override
  final bool isPasswordChangingFailed;
  @override
  final bool isPasswordChangingSucces;
  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'ChangePasswordState(isPasswordChnaging: $isPasswordChnaging, isPasswordChangingFailed: $isPasswordChangingFailed, isPasswordChangingSucces: $isPasswordChangingSucces, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            const DeepCollectionEquality()
                .equals(other.isPasswordChnaging, isPasswordChnaging) &&
            const DeepCollectionEquality().equals(
                other.isPasswordChangingFailed, isPasswordChangingFailed) &&
            const DeepCollectionEquality().equals(
                other.isPasswordChangingSucces, isPasswordChangingSucces) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPasswordChnaging),
      const DeepCollectionEquality().hash(isPasswordChangingFailed),
      const DeepCollectionEquality().hash(isPasswordChangingSucces),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required final bool isPasswordChnaging,
      required final bool isPasswordChangingFailed,
      required final bool isPasswordChangingSucces,
      required final ErrorModel error}) = _$_ChangePasswordState;

  @override
  bool get isPasswordChnaging;
  @override
  bool get isPasswordChangingFailed;
  @override
  bool get isPasswordChangingSucces;
  @override
  ErrorModel get error;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
