// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insurance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InsuranceEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) featchInsurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? featchInsurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? featchInsurance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeatchInsurance value) featchInsurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FeatchInsurance value)? featchInsurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeatchInsurance value)? featchInsurance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsuranceEventCopyWith<InsuranceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceEventCopyWith<$Res> {
  factory $InsuranceEventCopyWith(
          InsuranceEvent value, $Res Function(InsuranceEvent) then) =
      _$InsuranceEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$InsuranceEventCopyWithImpl<$Res>
    implements $InsuranceEventCopyWith<$Res> {
  _$InsuranceEventCopyWithImpl(this._value, this._then);

  final InsuranceEvent _value;
  // ignore: unused_field
  final $Res Function(InsuranceEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$FeatchInsuranceCopyWith<$Res>
    implements $InsuranceEventCopyWith<$Res> {
  factory _$$FeatchInsuranceCopyWith(
          _$FeatchInsurance value, $Res Function(_$FeatchInsurance) then) =
      __$$FeatchInsuranceCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$$FeatchInsuranceCopyWithImpl<$Res>
    extends _$InsuranceEventCopyWithImpl<$Res>
    implements _$$FeatchInsuranceCopyWith<$Res> {
  __$$FeatchInsuranceCopyWithImpl(
      _$FeatchInsurance _value, $Res Function(_$FeatchInsurance) _then)
      : super(_value, (v) => _then(v as _$FeatchInsurance));

  @override
  _$FeatchInsurance get _value => super._value as _$FeatchInsurance;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$FeatchInsurance(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeatchInsurance implements FeatchInsurance {
  const _$FeatchInsurance({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'InsuranceEvent.featchInsurance(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatchInsurance &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$FeatchInsuranceCopyWith<_$FeatchInsurance> get copyWith =>
      __$$FeatchInsuranceCopyWithImpl<_$FeatchInsurance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) featchInsurance,
  }) {
    return featchInsurance(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? featchInsurance,
  }) {
    return featchInsurance?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? featchInsurance,
    required TResult orElse(),
  }) {
    if (featchInsurance != null) {
      return featchInsurance(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeatchInsurance value) featchInsurance,
  }) {
    return featchInsurance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FeatchInsurance value)? featchInsurance,
  }) {
    return featchInsurance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeatchInsurance value)? featchInsurance,
    required TResult orElse(),
  }) {
    if (featchInsurance != null) {
      return featchInsurance(this);
    }
    return orElse();
  }
}

abstract class FeatchInsurance implements InsuranceEvent {
  const factory FeatchInsurance({required final String token}) =
      _$FeatchInsurance;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$FeatchInsuranceCopyWith<_$FeatchInsurance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InsuranceState {
  bool get isFetchingInsurances => throw _privateConstructorUsedError;
  bool get isInsuranceFecthingFailed => throw _privateConstructorUsedError;
  bool get isInsuranceFechingSuccess => throw _privateConstructorUsedError;
  List<InsuranceModel> get insurances => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsuranceStateCopyWith<InsuranceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceStateCopyWith<$Res> {
  factory $InsuranceStateCopyWith(
          InsuranceState value, $Res Function(InsuranceState) then) =
      _$InsuranceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetchingInsurances,
      bool isInsuranceFecthingFailed,
      bool isInsuranceFechingSuccess,
      List<InsuranceModel> insurances,
      ErrorModel error});
}

/// @nodoc
class _$InsuranceStateCopyWithImpl<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  _$InsuranceStateCopyWithImpl(this._value, this._then);

  final InsuranceState _value;
  // ignore: unused_field
  final $Res Function(InsuranceState) _then;

  @override
  $Res call({
    Object? isFetchingInsurances = freezed,
    Object? isInsuranceFecthingFailed = freezed,
    Object? isInsuranceFechingSuccess = freezed,
    Object? insurances = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isFetchingInsurances: isFetchingInsurances == freezed
          ? _value.isFetchingInsurances
          : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceFecthingFailed: isInsuranceFecthingFailed == freezed
          ? _value.isInsuranceFecthingFailed
          : isInsuranceFecthingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceFechingSuccess: isInsuranceFechingSuccess == freezed
          ? _value.isInsuranceFechingSuccess
          : isInsuranceFechingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      insurances: insurances == freezed
          ? _value.insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc
abstract class _$$_InsuranceStateCopyWith<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  factory _$$_InsuranceStateCopyWith(
          _$_InsuranceState value, $Res Function(_$_InsuranceState) then) =
      __$$_InsuranceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetchingInsurances,
      bool isInsuranceFecthingFailed,
      bool isInsuranceFechingSuccess,
      List<InsuranceModel> insurances,
      ErrorModel error});
}

/// @nodoc
class __$$_InsuranceStateCopyWithImpl<$Res>
    extends _$InsuranceStateCopyWithImpl<$Res>
    implements _$$_InsuranceStateCopyWith<$Res> {
  __$$_InsuranceStateCopyWithImpl(
      _$_InsuranceState _value, $Res Function(_$_InsuranceState) _then)
      : super(_value, (v) => _then(v as _$_InsuranceState));

  @override
  _$_InsuranceState get _value => super._value as _$_InsuranceState;

  @override
  $Res call({
    Object? isFetchingInsurances = freezed,
    Object? isInsuranceFecthingFailed = freezed,
    Object? isInsuranceFechingSuccess = freezed,
    Object? insurances = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_InsuranceState(
      isFetchingInsurances: isFetchingInsurances == freezed
          ? _value.isFetchingInsurances
          : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceFecthingFailed: isInsuranceFecthingFailed == freezed
          ? _value.isInsuranceFecthingFailed
          : isInsuranceFecthingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isInsuranceFechingSuccess: isInsuranceFechingSuccess == freezed
          ? _value.isInsuranceFechingSuccess
          : isInsuranceFechingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      insurances: insurances == freezed
          ? _value._insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<InsuranceModel>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$_InsuranceState implements _InsuranceState {
  const _$_InsuranceState(
      {required this.isFetchingInsurances,
      required this.isInsuranceFecthingFailed,
      required this.isInsuranceFechingSuccess,
      required final List<InsuranceModel> insurances,
      required this.error})
      : _insurances = insurances;

  @override
  final bool isFetchingInsurances;
  @override
  final bool isInsuranceFecthingFailed;
  @override
  final bool isInsuranceFechingSuccess;
  final List<InsuranceModel> _insurances;
  @override
  List<InsuranceModel> get insurances {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insurances);
  }

  @override
  final ErrorModel error;

  @override
  String toString() {
    return 'InsuranceState(isFetchingInsurances: $isFetchingInsurances, isInsuranceFecthingFailed: $isInsuranceFecthingFailed, isInsuranceFechingSuccess: $isInsuranceFechingSuccess, insurances: $insurances, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceState &&
            const DeepCollectionEquality()
                .equals(other.isFetchingInsurances, isFetchingInsurances) &&
            const DeepCollectionEquality().equals(
                other.isInsuranceFecthingFailed, isInsuranceFecthingFailed) &&
            const DeepCollectionEquality().equals(
                other.isInsuranceFechingSuccess, isInsuranceFechingSuccess) &&
            const DeepCollectionEquality()
                .equals(other._insurances, _insurances) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFetchingInsurances),
      const DeepCollectionEquality().hash(isInsuranceFecthingFailed),
      const DeepCollectionEquality().hash(isInsuranceFechingSuccess),
      const DeepCollectionEquality().hash(_insurances),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_InsuranceStateCopyWith<_$_InsuranceState> get copyWith =>
      __$$_InsuranceStateCopyWithImpl<_$_InsuranceState>(this, _$identity);
}

abstract class _InsuranceState implements InsuranceState {
  const factory _InsuranceState(
      {required final bool isFetchingInsurances,
      required final bool isInsuranceFecthingFailed,
      required final bool isInsuranceFechingSuccess,
      required final List<InsuranceModel> insurances,
      required final ErrorModel error}) = _$_InsuranceState;

  @override
  bool get isFetchingInsurances;
  @override
  bool get isInsuranceFecthingFailed;
  @override
  bool get isInsuranceFechingSuccess;
  @override
  List<InsuranceModel> get insurances;
  @override
  ErrorModel get error;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceStateCopyWith<_$_InsuranceState> get copyWith =>
      throw _privateConstructorUsedError;
}
