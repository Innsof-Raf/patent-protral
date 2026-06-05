// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_speciality_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSpecialityBlocEvent {
  String get searchKey => throw _privateConstructorUsedError;
  List<SpecialityModel> get specialities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchKey, List<SpecialityModel> specialities)
        searchSpeciality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchKey, List<SpecialityModel> specialities)?
        searchSpeciality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, List<SpecialityModel> specialities)?
        searchSpeciality,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSpeciality value) searchSpeciality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchSpeciality value)? searchSpeciality,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSpeciality value)? searchSpeciality,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSpecialityBlocEventCopyWith<SearchSpecialityBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSpecialityBlocEventCopyWith<$Res> {
  factory $SearchSpecialityBlocEventCopyWith(SearchSpecialityBlocEvent value,
          $Res Function(SearchSpecialityBlocEvent) then) =
      _$SearchSpecialityBlocEventCopyWithImpl<$Res>;
  $Res call({String searchKey, List<SpecialityModel> specialities});
}

/// @nodoc
class _$SearchSpecialityBlocEventCopyWithImpl<$Res>
    implements $SearchSpecialityBlocEventCopyWith<$Res> {
  _$SearchSpecialityBlocEventCopyWithImpl(this._value, this._then);

  final SearchSpecialityBlocEvent _value;
  // ignore: unused_field
  final $Res Function(SearchSpecialityBlocEvent) _then;

  @override
  $Res call({
    Object? searchKey = freezed,
    Object? specialities = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: specialities == freezed
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc
abstract class _$$SearchSpecialityCopyWith<$Res>
    implements $SearchSpecialityBlocEventCopyWith<$Res> {
  factory _$$SearchSpecialityCopyWith(
          _$SearchSpeciality value, $Res Function(_$SearchSpeciality) then) =
      __$$SearchSpecialityCopyWithImpl<$Res>;
  @override
  $Res call({String searchKey, List<SpecialityModel> specialities});
}

/// @nodoc
class __$$SearchSpecialityCopyWithImpl<$Res>
    extends _$SearchSpecialityBlocEventCopyWithImpl<$Res>
    implements _$$SearchSpecialityCopyWith<$Res> {
  __$$SearchSpecialityCopyWithImpl(
      _$SearchSpeciality _value, $Res Function(_$SearchSpeciality) _then)
      : super(_value, (v) => _then(v as _$SearchSpeciality));

  @override
  _$SearchSpeciality get _value => super._value as _$SearchSpeciality;

  @override
  $Res call({
    Object? searchKey = freezed,
    Object? specialities = freezed,
  }) {
    return _then(_$SearchSpeciality(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: specialities == freezed
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc

class _$SearchSpeciality implements SearchSpeciality {
  const _$SearchSpeciality(
      {required this.searchKey,
      required final List<SpecialityModel> specialities})
      : _specialities = specialities;

  @override
  final String searchKey;
  final List<SpecialityModel> _specialities;
  @override
  List<SpecialityModel> get specialities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  @override
  String toString() {
    return 'SearchSpecialityBlocEvent.searchSpeciality(searchKey: $searchKey, specialities: $specialities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSpeciality &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey) &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchKey),
      const DeepCollectionEquality().hash(_specialities));

  @JsonKey(ignore: true)
  @override
  _$$SearchSpecialityCopyWith<_$SearchSpeciality> get copyWith =>
      __$$SearchSpecialityCopyWithImpl<_$SearchSpeciality>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchKey, List<SpecialityModel> specialities)
        searchSpeciality,
  }) {
    return searchSpeciality(searchKey, specialities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchKey, List<SpecialityModel> specialities)?
        searchSpeciality,
  }) {
    return searchSpeciality?.call(searchKey, specialities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, List<SpecialityModel> specialities)?
        searchSpeciality,
    required TResult orElse(),
  }) {
    if (searchSpeciality != null) {
      return searchSpeciality(searchKey, specialities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSpeciality value) searchSpeciality,
  }) {
    return searchSpeciality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchSpeciality value)? searchSpeciality,
  }) {
    return searchSpeciality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSpeciality value)? searchSpeciality,
    required TResult orElse(),
  }) {
    if (searchSpeciality != null) {
      return searchSpeciality(this);
    }
    return orElse();
  }
}

abstract class SearchSpeciality implements SearchSpecialityBlocEvent {
  const factory SearchSpeciality(
      {required final String searchKey,
      required final List<SpecialityModel> specialities}) = _$SearchSpeciality;

  @override
  String get searchKey;
  @override
  List<SpecialityModel> get specialities;
  @override
  @JsonKey(ignore: true)
  _$$SearchSpecialityCopyWith<_$SearchSpeciality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchSpecialityBlocState {
  List<SpecialityModel> get searchResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSpecialityBlocStateCopyWith<SearchSpecialityBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSpecialityBlocStateCopyWith<$Res> {
  factory $SearchSpecialityBlocStateCopyWith(SearchSpecialityBlocState value,
          $Res Function(SearchSpecialityBlocState) then) =
      _$SearchSpecialityBlocStateCopyWithImpl<$Res>;
  $Res call({List<SpecialityModel> searchResult});
}

/// @nodoc
class _$SearchSpecialityBlocStateCopyWithImpl<$Res>
    implements $SearchSpecialityBlocStateCopyWith<$Res> {
  _$SearchSpecialityBlocStateCopyWithImpl(this._value, this._then);

  final SearchSpecialityBlocState _value;
  // ignore: unused_field
  final $Res Function(SearchSpecialityBlocState) _then;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchSpecialityBlocStateCopyWith<$Res>
    implements $SearchSpecialityBlocStateCopyWith<$Res> {
  factory _$$_SearchSpecialityBlocStateCopyWith(
          _$_SearchSpecialityBlocState value,
          $Res Function(_$_SearchSpecialityBlocState) then) =
      __$$_SearchSpecialityBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SpecialityModel> searchResult});
}

/// @nodoc
class __$$_SearchSpecialityBlocStateCopyWithImpl<$Res>
    extends _$SearchSpecialityBlocStateCopyWithImpl<$Res>
    implements _$$_SearchSpecialityBlocStateCopyWith<$Res> {
  __$$_SearchSpecialityBlocStateCopyWithImpl(
      _$_SearchSpecialityBlocState _value,
      $Res Function(_$_SearchSpecialityBlocState) _then)
      : super(_value, (v) => _then(v as _$_SearchSpecialityBlocState));

  @override
  _$_SearchSpecialityBlocState get _value =>
      super._value as _$_SearchSpecialityBlocState;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(_$_SearchSpecialityBlocState(
      searchResult: searchResult == freezed
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<SpecialityModel>,
    ));
  }
}

/// @nodoc

class _$_SearchSpecialityBlocState implements _SearchSpecialityBlocState {
  const _$_SearchSpecialityBlocState(
      {required final List<SpecialityModel> searchResult})
      : _searchResult = searchResult;

  final List<SpecialityModel> _searchResult;
  @override
  List<SpecialityModel> get searchResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'SearchSpecialityBlocState(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSpecialityBlocState &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  _$$_SearchSpecialityBlocStateCopyWith<_$_SearchSpecialityBlocState>
      get copyWith => __$$_SearchSpecialityBlocStateCopyWithImpl<
          _$_SearchSpecialityBlocState>(this, _$identity);
}

abstract class _SearchSpecialityBlocState implements SearchSpecialityBlocState {
  const factory _SearchSpecialityBlocState(
          {required final List<SpecialityModel> searchResult}) =
      _$_SearchSpecialityBlocState;

  @override
  List<SpecialityModel> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_SearchSpecialityBlocStateCopyWith<_$_SearchSpecialityBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
