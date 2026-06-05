// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_generation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpGenerationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) generateOtp,
    required TResult Function() resentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateOtp value) generateOtp,
    required TResult Function(ResentOtp value) resentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpGenerationEventCopyWith<$Res> {
  factory $OtpGenerationEventCopyWith(
          OtpGenerationEvent value, $Res Function(OtpGenerationEvent) then) =
      _$OtpGenerationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpGenerationEventCopyWithImpl<$Res>
    implements $OtpGenerationEventCopyWith<$Res> {
  _$OtpGenerationEventCopyWithImpl(this._value, this._then);

  final OtpGenerationEvent _value;
  // ignore: unused_field
  final $Res Function(OtpGenerationEvent) _then;
}

/// @nodoc
abstract class _$$GenerateOtpCopyWith<$Res> {
  factory _$$GenerateOtpCopyWith(
          _$GenerateOtp value, $Res Function(_$GenerateOtp) then) =
      __$$GenerateOtpCopyWithImpl<$Res>;
  $Res call({String mobileNumber});
}

/// @nodoc
class __$$GenerateOtpCopyWithImpl<$Res>
    extends _$OtpGenerationEventCopyWithImpl<$Res>
    implements _$$GenerateOtpCopyWith<$Res> {
  __$$GenerateOtpCopyWithImpl(
      _$GenerateOtp _value, $Res Function(_$GenerateOtp) _then)
      : super(_value, (v) => _then(v as _$GenerateOtp));

  @override
  _$GenerateOtp get _value => super._value as _$GenerateOtp;

  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_$GenerateOtp(
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateOtp implements GenerateOtp {
  const _$GenerateOtp({required this.mobileNumber});

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'OtpGenerationEvent.generateOtp(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateOtp &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$$GenerateOtpCopyWith<_$GenerateOtp> get copyWith =>
      __$$GenerateOtpCopyWithImpl<_$GenerateOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) generateOtp,
    required TResult Function() resentOtp,
  }) {
    return generateOtp(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
  }) {
    return generateOtp?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateOtp value) generateOtp,
    required TResult Function(ResentOtp value) resentOtp,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class GenerateOtp implements OtpGenerationEvent {
  const factory GenerateOtp({required final String mobileNumber}) =
      _$GenerateOtp;

  String get mobileNumber;
  @JsonKey(ignore: true)
  _$$GenerateOtpCopyWith<_$GenerateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResentOtpCopyWith<$Res> {
  factory _$$ResentOtpCopyWith(
          _$ResentOtp value, $Res Function(_$ResentOtp) then) =
      __$$ResentOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResentOtpCopyWithImpl<$Res>
    extends _$OtpGenerationEventCopyWithImpl<$Res>
    implements _$$ResentOtpCopyWith<$Res> {
  __$$ResentOtpCopyWithImpl(
      _$ResentOtp _value, $Res Function(_$ResentOtp) _then)
      : super(_value, (v) => _then(v as _$ResentOtp));

  @override
  _$ResentOtp get _value => super._value as _$ResentOtp;
}

/// @nodoc

class _$ResentOtp implements ResentOtp {
  const _$ResentOtp();

  @override
  String toString() {
    return 'OtpGenerationEvent.resentOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResentOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber) generateOtp,
    required TResult Function() resentOtp,
  }) {
    return resentOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
  }) {
    return resentOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber)? generateOtp,
    TResult Function()? resentOtp,
    required TResult orElse(),
  }) {
    if (resentOtp != null) {
      return resentOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateOtp value) generateOtp,
    required TResult Function(ResentOtp value) resentOtp,
  }) {
    return resentOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
  }) {
    return resentOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateOtp value)? generateOtp,
    TResult Function(ResentOtp value)? resentOtp,
    required TResult orElse(),
  }) {
    if (resentOtp != null) {
      return resentOtp(this);
    }
    return orElse();
  }
}

abstract class ResentOtp implements OtpGenerationEvent {
  const factory ResentOtp() = _$ResentOtp;
}

/// @nodoc
mixin _$OtpGenerationState {
  bool get isOtpGenerating => throw _privateConstructorUsedError;
  bool get isOtpGenerationFailed => throw _privateConstructorUsedError;
  bool get isResenting => throw _privateConstructorUsedError;
  bool get isOtpResentingFailed => throw _privateConstructorUsedError;
  bool get isOtpResentingSucess => throw _privateConstructorUsedError;
  bool get isOtpGenerationSuccess => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  bool get showPasswordSection => throw _privateConstructorUsedError;
  String get idOtp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpGenerationStateCopyWith<OtpGenerationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpGenerationStateCopyWith<$Res> {
  factory $OtpGenerationStateCopyWith(
          OtpGenerationState value, $Res Function(OtpGenerationState) then) =
      _$OtpGenerationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isOtpGenerating,
      bool isOtpGenerationFailed,
      bool isResenting,
      bool isOtpResentingFailed,
      bool isOtpResentingSucess,
      bool isOtpGenerationSuccess,
      String mobileNumber,
      ErrorModel error,
      bool showPasswordSection,
      String idOtp});
}

/// @nodoc
class _$OtpGenerationStateCopyWithImpl<$Res>
    implements $OtpGenerationStateCopyWith<$Res> {
  _$OtpGenerationStateCopyWithImpl(this._value, this._then);

  final OtpGenerationState _value;
  // ignore: unused_field
  final $Res Function(OtpGenerationState) _then;

  @override
  $Res call({
    Object? isOtpGenerating = freezed,
    Object? isOtpGenerationFailed = freezed,
    Object? isResenting = freezed,
    Object? isOtpResentingFailed = freezed,
    Object? isOtpResentingSucess = freezed,
    Object? isOtpGenerationSuccess = freezed,
    Object? mobileNumber = freezed,
    Object? error = freezed,
    Object? showPasswordSection = freezed,
    Object? idOtp = freezed,
  }) {
    return _then(_value.copyWith(
      isOtpGenerating: isOtpGenerating == freezed
          ? _value.isOtpGenerating
          : isOtpGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpGenerationFailed: isOtpGenerationFailed == freezed
          ? _value.isOtpGenerationFailed
          : isOtpGenerationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isResenting: isResenting == freezed
          ? _value.isResenting
          : isResenting // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpResentingFailed: isOtpResentingFailed == freezed
          ? _value.isOtpResentingFailed
          : isOtpResentingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpResentingSucess: isOtpResentingSucess == freezed
          ? _value.isOtpResentingSucess
          : isOtpResentingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpGenerationSuccess: isOtpGenerationSuccess == freezed
          ? _value.isOtpGenerationSuccess
          : isOtpGenerationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      showPasswordSection: showPasswordSection == freezed
          ? _value.showPasswordSection
          : showPasswordSection // ignore: cast_nullable_to_non_nullable
              as bool,
      idOtp: idOtp == freezed
          ? _value.idOtp
          : idOtp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OtpGenerationStateCopyWith<$Res>
    implements $OtpGenerationStateCopyWith<$Res> {
  factory _$$_OtpGenerationStateCopyWith(_$_OtpGenerationState value,
          $Res Function(_$_OtpGenerationState) then) =
      __$$_OtpGenerationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOtpGenerating,
      bool isOtpGenerationFailed,
      bool isResenting,
      bool isOtpResentingFailed,
      bool isOtpResentingSucess,
      bool isOtpGenerationSuccess,
      String mobileNumber,
      ErrorModel error,
      bool showPasswordSection,
      String idOtp});
}

/// @nodoc
class __$$_OtpGenerationStateCopyWithImpl<$Res>
    extends _$OtpGenerationStateCopyWithImpl<$Res>
    implements _$$_OtpGenerationStateCopyWith<$Res> {
  __$$_OtpGenerationStateCopyWithImpl(
      _$_OtpGenerationState _value, $Res Function(_$_OtpGenerationState) _then)
      : super(_value, (v) => _then(v as _$_OtpGenerationState));

  @override
  _$_OtpGenerationState get _value => super._value as _$_OtpGenerationState;

  @override
  $Res call({
    Object? isOtpGenerating = freezed,
    Object? isOtpGenerationFailed = freezed,
    Object? isResenting = freezed,
    Object? isOtpResentingFailed = freezed,
    Object? isOtpResentingSucess = freezed,
    Object? isOtpGenerationSuccess = freezed,
    Object? mobileNumber = freezed,
    Object? error = freezed,
    Object? showPasswordSection = freezed,
    Object? idOtp = freezed,
  }) {
    return _then(_$_OtpGenerationState(
      isOtpGenerating: isOtpGenerating == freezed
          ? _value.isOtpGenerating
          : isOtpGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpGenerationFailed: isOtpGenerationFailed == freezed
          ? _value.isOtpGenerationFailed
          : isOtpGenerationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isResenting: isResenting == freezed
          ? _value.isResenting
          : isResenting // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpResentingFailed: isOtpResentingFailed == freezed
          ? _value.isOtpResentingFailed
          : isOtpResentingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpResentingSucess: isOtpResentingSucess == freezed
          ? _value.isOtpResentingSucess
          : isOtpResentingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpGenerationSuccess: isOtpGenerationSuccess == freezed
          ? _value.isOtpGenerationSuccess
          : isOtpGenerationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      showPasswordSection: showPasswordSection == freezed
          ? _value.showPasswordSection
          : showPasswordSection // ignore: cast_nullable_to_non_nullable
              as bool,
      idOtp: idOtp == freezed
          ? _value.idOtp
          : idOtp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpGenerationState implements _OtpGenerationState {
  const _$_OtpGenerationState(
      {required this.isOtpGenerating,
      required this.isOtpGenerationFailed,
      required this.isResenting,
      required this.isOtpResentingFailed,
      required this.isOtpResentingSucess,
      required this.isOtpGenerationSuccess,
      required this.mobileNumber,
      required this.error,
      required this.showPasswordSection,
      required this.idOtp});

  @override
  final bool isOtpGenerating;
  @override
  final bool isOtpGenerationFailed;
  @override
  final bool isResenting;
  @override
  final bool isOtpResentingFailed;
  @override
  final bool isOtpResentingSucess;
  @override
  final bool isOtpGenerationSuccess;
  @override
  final String mobileNumber;
  @override
  final ErrorModel error;
  @override
  final bool showPasswordSection;
  @override
  final String idOtp;

  @override
  String toString() {
    return 'OtpGenerationState(isOtpGenerating: $isOtpGenerating, isOtpGenerationFailed: $isOtpGenerationFailed, isResenting: $isResenting, isOtpResentingFailed: $isOtpResentingFailed, isOtpResentingSucess: $isOtpResentingSucess, isOtpGenerationSuccess: $isOtpGenerationSuccess, mobileNumber: $mobileNumber, error: $error, showPasswordSection: $showPasswordSection, idOtp: $idOtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpGenerationState &&
            const DeepCollectionEquality()
                .equals(other.isOtpGenerating, isOtpGenerating) &&
            const DeepCollectionEquality()
                .equals(other.isOtpGenerationFailed, isOtpGenerationFailed) &&
            const DeepCollectionEquality()
                .equals(other.isResenting, isResenting) &&
            const DeepCollectionEquality()
                .equals(other.isOtpResentingFailed, isOtpResentingFailed) &&
            const DeepCollectionEquality()
                .equals(other.isOtpResentingSucess, isOtpResentingSucess) &&
            const DeepCollectionEquality()
                .equals(other.isOtpGenerationSuccess, isOtpGenerationSuccess) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.showPasswordSection, showPasswordSection) &&
            const DeepCollectionEquality().equals(other.idOtp, idOtp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOtpGenerating),
      const DeepCollectionEquality().hash(isOtpGenerationFailed),
      const DeepCollectionEquality().hash(isResenting),
      const DeepCollectionEquality().hash(isOtpResentingFailed),
      const DeepCollectionEquality().hash(isOtpResentingSucess),
      const DeepCollectionEquality().hash(isOtpGenerationSuccess),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(showPasswordSection),
      const DeepCollectionEquality().hash(idOtp));

  @JsonKey(ignore: true)
  @override
  _$$_OtpGenerationStateCopyWith<_$_OtpGenerationState> get copyWith =>
      __$$_OtpGenerationStateCopyWithImpl<_$_OtpGenerationState>(
          this, _$identity);
}

abstract class _OtpGenerationState implements OtpGenerationState {
  const factory _OtpGenerationState(
      {required final bool isOtpGenerating,
      required final bool isOtpGenerationFailed,
      required final bool isResenting,
      required final bool isOtpResentingFailed,
      required final bool isOtpResentingSucess,
      required final bool isOtpGenerationSuccess,
      required final String mobileNumber,
      required final ErrorModel error,
      required final bool showPasswordSection,
      required final String idOtp}) = _$_OtpGenerationState;

  @override
  bool get isOtpGenerating;
  @override
  bool get isOtpGenerationFailed;
  @override
  bool get isResenting;
  @override
  bool get isOtpResentingFailed;
  @override
  bool get isOtpResentingSucess;
  @override
  bool get isOtpGenerationSuccess;
  @override
  String get mobileNumber;
  @override
  ErrorModel get error;
  @override
  bool get showPasswordSection;
  @override
  String get idOtp;
  @override
  @JsonKey(ignore: true)
  _$$_OtpGenerationStateCopyWith<_$_OtpGenerationState> get copyWith =>
      throw _privateConstructorUsedError;
}
