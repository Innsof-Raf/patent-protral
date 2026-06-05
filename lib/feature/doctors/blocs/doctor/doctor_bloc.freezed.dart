// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorEvent {
  int get idspeciality => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idspeciality) getAvailableDoctorsByDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idspeciality)? getAvailableDoctorsByDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idspeciality)? getAvailableDoctorsByDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableDoctorsByDepartment value)
        getAvailableDoctorsByDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableDoctorsByDepartment value)?
        getAvailableDoctorsByDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableDoctorsByDepartment value)?
        getAvailableDoctorsByDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorEventCopyWith<DoctorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res>;
  $Res call({int idspeciality});
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res> implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  final DoctorEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorEvent) _then;

  @override
  $Res call({
    Object? idspeciality = freezed,
  }) {
    return _then(_value.copyWith(
      idspeciality: idspeciality == freezed
          ? _value.idspeciality
          : idspeciality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$GetAvailableDoctorsByDepartmentCopyWith<$Res>
    implements $DoctorEventCopyWith<$Res> {
  factory _$$GetAvailableDoctorsByDepartmentCopyWith(
          _$GetAvailableDoctorsByDepartment value,
          $Res Function(_$GetAvailableDoctorsByDepartment) then) =
      __$$GetAvailableDoctorsByDepartmentCopyWithImpl<$Res>;
  @override
  $Res call({int idspeciality});
}

/// @nodoc
class __$$GetAvailableDoctorsByDepartmentCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res>
    implements _$$GetAvailableDoctorsByDepartmentCopyWith<$Res> {
  __$$GetAvailableDoctorsByDepartmentCopyWithImpl(
      _$GetAvailableDoctorsByDepartment _value,
      $Res Function(_$GetAvailableDoctorsByDepartment) _then)
      : super(_value, (v) => _then(v as _$GetAvailableDoctorsByDepartment));

  @override
  _$GetAvailableDoctorsByDepartment get _value =>
      super._value as _$GetAvailableDoctorsByDepartment;

  @override
  $Res call({
    Object? idspeciality = freezed,
  }) {
    return _then(_$GetAvailableDoctorsByDepartment(
      idspeciality: idspeciality == freezed
          ? _value.idspeciality
          : idspeciality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAvailableDoctorsByDepartment
    implements GetAvailableDoctorsByDepartment {
  const _$GetAvailableDoctorsByDepartment({required this.idspeciality});

  @override
  final int idspeciality;

  @override
  String toString() {
    return 'DoctorEvent.getAvailableDoctorsByDepartment(idspeciality: $idspeciality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAvailableDoctorsByDepartment &&
            const DeepCollectionEquality()
                .equals(other.idspeciality, idspeciality));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(idspeciality));

  @JsonKey(ignore: true)
  @override
  _$$GetAvailableDoctorsByDepartmentCopyWith<_$GetAvailableDoctorsByDepartment>
      get copyWith => __$$GetAvailableDoctorsByDepartmentCopyWithImpl<
          _$GetAvailableDoctorsByDepartment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idspeciality) getAvailableDoctorsByDepartment,
  }) {
    return getAvailableDoctorsByDepartment(idspeciality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int idspeciality)? getAvailableDoctorsByDepartment,
  }) {
    return getAvailableDoctorsByDepartment?.call(idspeciality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idspeciality)? getAvailableDoctorsByDepartment,
    required TResult orElse(),
  }) {
    if (getAvailableDoctorsByDepartment != null) {
      return getAvailableDoctorsByDepartment(idspeciality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAvailableDoctorsByDepartment value)
        getAvailableDoctorsByDepartment,
  }) {
    return getAvailableDoctorsByDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAvailableDoctorsByDepartment value)?
        getAvailableDoctorsByDepartment,
  }) {
    return getAvailableDoctorsByDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAvailableDoctorsByDepartment value)?
        getAvailableDoctorsByDepartment,
    required TResult orElse(),
  }) {
    if (getAvailableDoctorsByDepartment != null) {
      return getAvailableDoctorsByDepartment(this);
    }
    return orElse();
  }
}

abstract class GetAvailableDoctorsByDepartment implements DoctorEvent {
  const factory GetAvailableDoctorsByDepartment(
      {required final int idspeciality}) = _$GetAvailableDoctorsByDepartment;

  @override
  int get idspeciality;
  @override
  @JsonKey(ignore: true)
  _$$GetAvailableDoctorsByDepartmentCopyWith<_$GetAvailableDoctorsByDepartment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorState {
  bool get isDoctorsFetching => throw _privateConstructorUsedError;
  bool get isDoctorsFetchingFailed => throw _privateConstructorUsedError;
  bool get isDoctorsFetchingSuccess => throw _privateConstructorUsedError;
  ErrorModel get error => throw _privateConstructorUsedError;
  List<DoctorModel> get doctors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorStateCopyWith<DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res>;
  $Res call(
      {bool isDoctorsFetching,
      bool isDoctorsFetchingFailed,
      bool isDoctorsFetchingSuccess,
      ErrorModel error,
      List<DoctorModel> doctors});
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res> implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  final DoctorState _value;
  // ignore: unused_field
  final $Res Function(DoctorState) _then;

  @override
  $Res call({
    Object? isDoctorsFetching = freezed,
    Object? isDoctorsFetchingFailed = freezed,
    Object? isDoctorsFetchingSuccess = freezed,
    Object? error = freezed,
    Object? doctors = freezed,
  }) {
    return _then(_value.copyWith(
      isDoctorsFetching: isDoctorsFetching == freezed
          ? _value.isDoctorsFetching
          : isDoctorsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDoctorsFetchingFailed: isDoctorsFetchingFailed == freezed
          ? _value.isDoctorsFetchingFailed
          : isDoctorsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDoctorsFetchingSuccess: isDoctorsFetchingSuccess == freezed
          ? _value.isDoctorsFetchingSuccess
          : isDoctorsFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      doctors: doctors == freezed
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_DoctorStateCopyWith<$Res>
    implements $DoctorStateCopyWith<$Res> {
  factory _$$_DoctorStateCopyWith(
          _$_DoctorState value, $Res Function(_$_DoctorState) then) =
      __$$_DoctorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isDoctorsFetching,
      bool isDoctorsFetchingFailed,
      bool isDoctorsFetchingSuccess,
      ErrorModel error,
      List<DoctorModel> doctors});
}

/// @nodoc
class __$$_DoctorStateCopyWithImpl<$Res> extends _$DoctorStateCopyWithImpl<$Res>
    implements _$$_DoctorStateCopyWith<$Res> {
  __$$_DoctorStateCopyWithImpl(
      _$_DoctorState _value, $Res Function(_$_DoctorState) _then)
      : super(_value, (v) => _then(v as _$_DoctorState));

  @override
  _$_DoctorState get _value => super._value as _$_DoctorState;

  @override
  $Res call({
    Object? isDoctorsFetching = freezed,
    Object? isDoctorsFetchingFailed = freezed,
    Object? isDoctorsFetchingSuccess = freezed,
    Object? error = freezed,
    Object? doctors = freezed,
  }) {
    return _then(_$_DoctorState(
      isDoctorsFetching: isDoctorsFetching == freezed
          ? _value.isDoctorsFetching
          : isDoctorsFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isDoctorsFetchingFailed: isDoctorsFetchingFailed == freezed
          ? _value.isDoctorsFetchingFailed
          : isDoctorsFetchingFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isDoctorsFetchingSuccess: isDoctorsFetchingSuccess == freezed
          ? _value.isDoctorsFetchingSuccess
          : isDoctorsFetchingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      doctors: doctors == freezed
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc

class _$_DoctorState implements _DoctorState {
  const _$_DoctorState(
      {required this.isDoctorsFetching,
      required this.isDoctorsFetchingFailed,
      required this.isDoctorsFetchingSuccess,
      required this.error,
      required final List<DoctorModel> doctors})
      : _doctors = doctors;

  @override
  final bool isDoctorsFetching;
  @override
  final bool isDoctorsFetchingFailed;
  @override
  final bool isDoctorsFetchingSuccess;
  @override
  final ErrorModel error;
  final List<DoctorModel> _doctors;
  @override
  List<DoctorModel> get doctors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'DoctorState(isDoctorsFetching: $isDoctorsFetching, isDoctorsFetchingFailed: $isDoctorsFetchingFailed, isDoctorsFetchingSuccess: $isDoctorsFetchingSuccess, error: $error, doctors: $doctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorState &&
            const DeepCollectionEquality()
                .equals(other.isDoctorsFetching, isDoctorsFetching) &&
            const DeepCollectionEquality().equals(
                other.isDoctorsFetchingFailed, isDoctorsFetchingFailed) &&
            const DeepCollectionEquality().equals(
                other.isDoctorsFetchingSuccess, isDoctorsFetchingSuccess) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDoctorsFetching),
      const DeepCollectionEquality().hash(isDoctorsFetchingFailed),
      const DeepCollectionEquality().hash(isDoctorsFetchingSuccess),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  _$$_DoctorStateCopyWith<_$_DoctorState> get copyWith =>
      __$$_DoctorStateCopyWithImpl<_$_DoctorState>(this, _$identity);
}

abstract class _DoctorState implements DoctorState {
  const factory _DoctorState(
      {required final bool isDoctorsFetching,
      required final bool isDoctorsFetchingFailed,
      required final bool isDoctorsFetchingSuccess,
      required final ErrorModel error,
      required final List<DoctorModel> doctors}) = _$_DoctorState;

  @override
  bool get isDoctorsFetching;
  @override
  bool get isDoctorsFetchingFailed;
  @override
  bool get isDoctorsFetchingSuccess;
  @override
  ErrorModel get error;
  @override
  List<DoctorModel> get doctors;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorStateCopyWith<_$_DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}
