// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDoctorEvent {
  String get searchKey => throw _privateConstructorUsedError;
  List<DoctorModel> get doctors => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchKey, List<DoctorModel> doctors)
        searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchKey, List<DoctorModel> doctors)? searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, List<DoctorModel> doctors)? searchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDoctor value) searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchDoctor value)? searchDoctor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDoctor value)? searchDoctor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDoctorEventCopyWith<SearchDoctorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDoctorEventCopyWith<$Res> {
  factory $SearchDoctorEventCopyWith(
          SearchDoctorEvent value, $Res Function(SearchDoctorEvent) then) =
      _$SearchDoctorEventCopyWithImpl<$Res>;
  $Res call({String searchKey, List<DoctorModel> doctors});
}

/// @nodoc
class _$SearchDoctorEventCopyWithImpl<$Res>
    implements $SearchDoctorEventCopyWith<$Res> {
  _$SearchDoctorEventCopyWithImpl(this._value, this._then);

  final SearchDoctorEvent _value;
  // ignore: unused_field
  final $Res Function(SearchDoctorEvent) _then;

  @override
  $Res call({
    Object? searchKey = freezed,
    Object? doctors = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: doctors == freezed
          ? _value.doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc
abstract class _$$SearchDoctorCopyWith<$Res>
    implements $SearchDoctorEventCopyWith<$Res> {
  factory _$$SearchDoctorCopyWith(
          _$SearchDoctor value, $Res Function(_$SearchDoctor) then) =
      __$$SearchDoctorCopyWithImpl<$Res>;
  @override
  $Res call({String searchKey, List<DoctorModel> doctors});
}

/// @nodoc
class __$$SearchDoctorCopyWithImpl<$Res>
    extends _$SearchDoctorEventCopyWithImpl<$Res>
    implements _$$SearchDoctorCopyWith<$Res> {
  __$$SearchDoctorCopyWithImpl(
      _$SearchDoctor _value, $Res Function(_$SearchDoctor) _then)
      : super(_value, (v) => _then(v as _$SearchDoctor));

  @override
  _$SearchDoctor get _value => super._value as _$SearchDoctor;

  @override
  $Res call({
    Object? searchKey = freezed,
    Object? doctors = freezed,
  }) {
    return _then(_$SearchDoctor(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      doctors: doctors == freezed
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc

class _$SearchDoctor implements SearchDoctor {
  const _$SearchDoctor(
      {required this.searchKey, required final List<DoctorModel> doctors})
      : _doctors = doctors;

  @override
  final String searchKey;
  final List<DoctorModel> _doctors;
  @override
  List<DoctorModel> get doctors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'SearchDoctorEvent.searchDoctor(searchKey: $searchKey, doctors: $doctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDoctor &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchKey),
      const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  _$$SearchDoctorCopyWith<_$SearchDoctor> get copyWith =>
      __$$SearchDoctorCopyWithImpl<_$SearchDoctor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchKey, List<DoctorModel> doctors)
        searchDoctor,
  }) {
    return searchDoctor(searchKey, doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchKey, List<DoctorModel> doctors)? searchDoctor,
  }) {
    return searchDoctor?.call(searchKey, doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, List<DoctorModel> doctors)? searchDoctor,
    required TResult orElse(),
  }) {
    if (searchDoctor != null) {
      return searchDoctor(searchKey, doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDoctor value) searchDoctor,
  }) {
    return searchDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchDoctor value)? searchDoctor,
  }) {
    return searchDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDoctor value)? searchDoctor,
    required TResult orElse(),
  }) {
    if (searchDoctor != null) {
      return searchDoctor(this);
    }
    return orElse();
  }
}

abstract class SearchDoctor implements SearchDoctorEvent {
  const factory SearchDoctor(
      {required final String searchKey,
      required final List<DoctorModel> doctors}) = _$SearchDoctor;

  @override
  String get searchKey;
  @override
  List<DoctorModel> get doctors;
  @override
  @JsonKey(ignore: true)
  _$$SearchDoctorCopyWith<_$SearchDoctor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchDoctorState {
  List<DoctorModel> get searchResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDoctorStateCopyWith<SearchDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDoctorStateCopyWith<$Res> {
  factory $SearchDoctorStateCopyWith(
          SearchDoctorState value, $Res Function(SearchDoctorState) then) =
      _$SearchDoctorStateCopyWithImpl<$Res>;
  $Res call({List<DoctorModel> searchResult});
}

/// @nodoc
class _$SearchDoctorStateCopyWithImpl<$Res>
    implements $SearchDoctorStateCopyWith<$Res> {
  _$SearchDoctorStateCopyWithImpl(this._value, this._then);

  final SearchDoctorState _value;
  // ignore: unused_field
  final $Res Function(SearchDoctorState) _then;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchDoctorStateCopyWith<$Res>
    implements $SearchDoctorStateCopyWith<$Res> {
  factory _$$_SearchDoctorStateCopyWith(_$_SearchDoctorState value,
          $Res Function(_$_SearchDoctorState) then) =
      __$$_SearchDoctorStateCopyWithImpl<$Res>;
  @override
  $Res call({List<DoctorModel> searchResult});
}

/// @nodoc
class __$$_SearchDoctorStateCopyWithImpl<$Res>
    extends _$SearchDoctorStateCopyWithImpl<$Res>
    implements _$$_SearchDoctorStateCopyWith<$Res> {
  __$$_SearchDoctorStateCopyWithImpl(
      _$_SearchDoctorState _value, $Res Function(_$_SearchDoctorState) _then)
      : super(_value, (v) => _then(v as _$_SearchDoctorState));

  @override
  _$_SearchDoctorState get _value => super._value as _$_SearchDoctorState;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(_$_SearchDoctorState(
      searchResult: searchResult == freezed
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<DoctorModel>,
    ));
  }
}

/// @nodoc

class _$_SearchDoctorState implements _SearchDoctorState {
  const _$_SearchDoctorState({required final List<DoctorModel> searchResult})
      : _searchResult = searchResult;

  final List<DoctorModel> _searchResult;
  @override
  List<DoctorModel> get searchResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'SearchDoctorState(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDoctorState &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  _$$_SearchDoctorStateCopyWith<_$_SearchDoctorState> get copyWith =>
      __$$_SearchDoctorStateCopyWithImpl<_$_SearchDoctorState>(
          this, _$identity);
}

abstract class _SearchDoctorState implements SearchDoctorState {
  const factory _SearchDoctorState(
      {required final List<DoctorModel> searchResult}) = _$_SearchDoctorState;

  @override
  List<DoctorModel> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDoctorStateCopyWith<_$_SearchDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}
