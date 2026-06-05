// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speciality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpecialityEvent {
  String get token => throw _privateConstructorUsedError;
  int get idBusUnit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int idBusUnit) fetchSpecialities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, int idBusUnit)? fetchSpecialities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int idBusUnit)? fetchSpecialities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSpecialities value) fetchSpecialities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSpecialities value)? fetchSpecialities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSpecialities value)? fetchSpecialities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialityEventCopyWith<SpecialityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityEventCopyWith<$Res> {
  factory $SpecialityEventCopyWith(
          SpecialityEvent value, $Res Function(SpecialityEvent) then) =
      _$SpecialityEventCopyWithImpl<$Res>;
  $Res call({String token, int idBusUnit});
}

/// @nodoc
class _$SpecialityEventCopyWithImpl<$Res>
    implements $SpecialityEventCopyWith<$Res> {
  _$SpecialityEventCopyWithImpl(this._value, this._then);

  final SpecialityEvent _value;
  // ignore: unused_field
  final $Res Function(SpecialityEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? idBusUnit = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idBusUnit: idBusUnit == freezed
          ? _value.idBusUnit
          : idBusUnit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$FetchSpecialitiesCopyWith<$Res>
    implements $SpecialityEventCopyWith<$Res> {
  factory _$$FetchSpecialitiesCopyWith(
          _$FetchSpecialities value, $Res Function(_$FetchSpecialities) then) =
      __$$FetchSpecialitiesCopyWithImpl<$Res>;
  @override
  $Res call({String token, int idBusUnit});
}

/// @nodoc
class __$$FetchSpecialitiesCopyWithImpl<$Res>
    extends _$SpecialityEventCopyWithImpl<$Res>
    implements _$$FetchSpecialitiesCopyWith<$Res> {
  __$$FetchSpecialitiesCopyWithImpl(
      _$FetchSpecialities _value, $Res Function(_$FetchSpecialities) _then)
      : super(_value, (v) => _then(v as _$FetchSpecialities));

  @override
  _$FetchSpecialities get _value => super._value as _$FetchSpecialities;

  @override
  $Res call({
    Object? token = freezed,
    Object? idBusUnit = freezed,
  }) {
    return _then(_$FetchSpecialities(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      idBusUnit: idBusUnit == freezed
          ? _value.idBusUnit
          : idBusUnit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchSpecialities
    with DiagnosticableTreeMixin
    implements FetchSpecialities {
  const _$FetchSpecialities({required this.token, required this.idBusUnit});

  @override
  final String token;
  @override
  final int idBusUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecialityEvent.fetchSpecialities(token: $token, idBusUnit: $idBusUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecialityEvent.fetchSpecialities'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('idBusUnit', idBusUnit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSpecialities &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.idBusUnit, idBusUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(idBusUnit));

  @JsonKey(ignore: true)
  @override
  _$$FetchSpecialitiesCopyWith<_$FetchSpecialities> get copyWith =>
      __$$FetchSpecialitiesCopyWithImpl<_$FetchSpecialities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, int idBusUnit) fetchSpecialities,
  }) {
    return fetchSpecialities(token, idBusUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, int idBusUnit)? fetchSpecialities,
  }) {
    return fetchSpecialities?.call(token, idBusUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, int idBusUnit)? fetchSpecialities,
    required TResult orElse(),
  }) {
    if (fetchSpecialities != null) {
      return fetchSpecialities(token, idBusUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSpecialities value) fetchSpecialities,
  }) {
    return fetchSpecialities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchSpecialities value)? fetchSpecialities,
  }) {
    return fetchSpecialities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSpecialities value)? fetchSpecialities,
    required TResult orElse(),
  }) {
    if (fetchSpecialities != null) {
      return fetchSpecialities(this);
    }
    return orElse();
  }
}

abstract class FetchSpecialities implements SpecialityEvent {
  const factory FetchSpecialities(
      {required final String token,
      required final int idBusUnit}) = _$FetchSpecialities;

  @override
  String get token;
  @override
  int get idBusUnit;
  @override
  @JsonKey(ignore: true)
  _$$FetchSpecialitiesCopyWith<_$FetchSpecialities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecialityState {
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingSuccess => throw _privateConstructorUsedError;
  bool get isFetchingError => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<SpecialityModel> get specialities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialityStateCopyWith<SpecialityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialityStateCopyWith<$Res> {
  factory $SpecialityStateCopyWith(
          SpecialityState value, $Res Function(SpecialityState) then) =
      _$SpecialityStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFetching,
      bool isFetchingSuccess,
      bool isFetchingError,
      ErrorModel error,
      List<SpecialityModel> specialities});
}

/// @nodoc
class _$SpecialityStateCopyWithImpl<$Res>
    implements $SpecialityStateCopyWith<$Res> {
  _$SpecialityStateCopyWithImpl(this._value, this._then);

  final SpecialityState _value;
  // ignore: unused_field
  final $Res Function(SpecialityState) _then;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? isFetchingSuccess = freezed,
    Object? isFetchingError = freezed,
    Object? error = freezed,
    Object? specialities = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccess: isFetchingSuccess == freezed
          ? _value.isFetchingSuccess
          : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingError: isFetchingError == freezed
          ? _value.isFetchingError
          : isFetchingError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecialityStateCopyWith<$Res>
    implements $SpecialityStateCopyWith<$Res> {
  factory _$$_SpecialityStateCopyWith(
          _$_SpecialityState value, $Res Function(_$_SpecialityState) then) =
      __$$_SpecialityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFetching,
      bool isFetchingSuccess,
      bool isFetchingError,
      ErrorModel error,
      List<SpecialityModel> specialities});
}

/// @nodoc
class __$$_SpecialityStateCopyWithImpl<$Res>
    extends _$SpecialityStateCopyWithImpl<$Res>
    implements _$$_SpecialityStateCopyWith<$Res> {
  __$$_SpecialityStateCopyWithImpl(
      _$_SpecialityState _value, $Res Function(_$_SpecialityState) _then)
      : super(_value, (v) => _then(v as _$_SpecialityState));

  @override
  _$_SpecialityState get _value => super._value as _$_SpecialityState;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? isFetchingSuccess = freezed,
    Object? isFetchingError = freezed,
    Object? error = freezed,
    Object? specialities = freezed,
  }) {
    return _then(_$_SpecialityState(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingSuccess: isFetchingSuccess == freezed
          ? _value.isFetchingSuccess
          : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingError: isFetchingError == freezed
          ? _value.isFetchingError
          : isFetchingError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      specialities: specialities == freezed
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc

class _$_SpecialityState
    with DiagnosticableTreeMixin
    implements _SpecialityState {
  const _$_SpecialityState(
      {required this.isFetching,
      required this.isFetchingSuccess,
      required this.isFetchingError,
      required this.error,
      required final List<SpecialityModel> specialities})
      : _specialities = specialities;

  @override
  final bool isFetching;
  @override
  final bool isFetchingSuccess;
  @override
  final bool isFetchingError;
  @override
  final ErrorModel error;
  final List<SpecialityModel> _specialities;
  @override
  List<SpecialityModel> get specialities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecialityState(isFetching: $isFetching, isFetchingSuccess: $isFetchingSuccess, isFetchingError: $isFetchingError, error: $error, specialities: $specialities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecialityState'))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('isFetchingSuccess', isFetchingSuccess))
      ..add(DiagnosticsProperty('isFetchingError', isFetchingError))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('specialities', specialities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecialityState &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingSuccess, isFetchingSuccess) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingError, isFetchingError) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFetching),
      const DeepCollectionEquality().hash(isFetchingSuccess),
      const DeepCollectionEquality().hash(isFetchingError),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_specialities));

  @JsonKey(ignore: true)
  @override
  _$$_SpecialityStateCopyWith<_$_SpecialityState> get copyWith =>
      __$$_SpecialityStateCopyWithImpl<_$_SpecialityState>(this, _$identity);
}

abstract class _SpecialityState implements SpecialityState {
  const factory _SpecialityState(
      {required final bool isFetching,
      required final bool isFetchingSuccess,
      required final bool isFetchingError,
      required final ErrorModel error,
      required final List<SpecialityModel> specialities}) = _$_SpecialityState;

  @override
  bool get isFetching;
  @override
  bool get isFetchingSuccess;
  @override
  bool get isFetchingError;
  @override
  ErrorModel get error;
  @override
  List<SpecialityModel> get specialities;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialityStateCopyWith<_$_SpecialityState> get copyWith =>
      throw _privateConstructorUsedError;
}
