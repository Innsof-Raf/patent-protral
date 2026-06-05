// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberSearchEvent {
  List<MemberModel> get members => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MemberModel> members, String searchKey)
        searchMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MemberModel> members, String searchKey)? searchMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MemberModel> members, String searchKey)? searchMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchMember value) searchMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchMember value)? searchMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchMember value)? searchMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberSearchEventCopyWith<MemberSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSearchEventCopyWith<$Res> {
  factory $MemberSearchEventCopyWith(
          MemberSearchEvent value, $Res Function(MemberSearchEvent) then) =
      _$MemberSearchEventCopyWithImpl<$Res>;
  $Res call({List<MemberModel> members, String searchKey});
}

/// @nodoc
class _$MemberSearchEventCopyWithImpl<$Res>
    implements $MemberSearchEventCopyWith<$Res> {
  _$MemberSearchEventCopyWithImpl(this._value, this._then);

  final MemberSearchEvent _value;
  // ignore: unused_field
  final $Res Function(MemberSearchEvent) _then;

  @override
  $Res call({
    Object? members = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_value.copyWith(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SearchMemberCopyWith<$Res>
    implements $MemberSearchEventCopyWith<$Res> {
  factory _$$SearchMemberCopyWith(
          _$SearchMember value, $Res Function(_$SearchMember) then) =
      __$$SearchMemberCopyWithImpl<$Res>;
  @override
  $Res call({List<MemberModel> members, String searchKey});
}

/// @nodoc
class __$$SearchMemberCopyWithImpl<$Res>
    extends _$MemberSearchEventCopyWithImpl<$Res>
    implements _$$SearchMemberCopyWith<$Res> {
  __$$SearchMemberCopyWithImpl(
      _$SearchMember _value, $Res Function(_$SearchMember) _then)
      : super(_value, (v) => _then(v as _$SearchMember));

  @override
  _$SearchMember get _value => super._value as _$SearchMember;

  @override
  $Res call({
    Object? members = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_$SearchMember(
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMember implements SearchMember {
  const _$SearchMember(
      {required final List<MemberModel> members, required this.searchKey})
      : _members = members;

  final List<MemberModel> _members;
  @override
  List<MemberModel> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final String searchKey;

  @override
  String toString() {
    return 'MemberSearchEvent.searchMember(members: $members, searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMember &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$$SearchMemberCopyWith<_$SearchMember> get copyWith =>
      __$$SearchMemberCopyWithImpl<_$SearchMember>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MemberModel> members, String searchKey)
        searchMember,
  }) {
    return searchMember(members, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<MemberModel> members, String searchKey)? searchMember,
  }) {
    return searchMember?.call(members, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MemberModel> members, String searchKey)? searchMember,
    required TResult orElse(),
  }) {
    if (searchMember != null) {
      return searchMember(members, searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchMember value) searchMember,
  }) {
    return searchMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchMember value)? searchMember,
  }) {
    return searchMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchMember value)? searchMember,
    required TResult orElse(),
  }) {
    if (searchMember != null) {
      return searchMember(this);
    }
    return orElse();
  }
}

abstract class SearchMember implements MemberSearchEvent {
  const factory SearchMember(
      {required final List<MemberModel> members,
      required final String searchKey}) = _$SearchMember;

  @override
  List<MemberModel> get members;
  @override
  String get searchKey;
  @override
  @JsonKey(ignore: true)
  _$$SearchMemberCopyWith<_$SearchMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemberSearchState {
  List<MemberModel> get searchResultMembers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberSearchStateCopyWith<MemberSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSearchStateCopyWith<$Res> {
  factory $MemberSearchStateCopyWith(
          MemberSearchState value, $Res Function(MemberSearchState) then) =
      _$MemberSearchStateCopyWithImpl<$Res>;
  $Res call({List<MemberModel> searchResultMembers});
}

/// @nodoc
class _$MemberSearchStateCopyWithImpl<$Res>
    implements $MemberSearchStateCopyWith<$Res> {
  _$MemberSearchStateCopyWithImpl(this._value, this._then);

  final MemberSearchState _value;
  // ignore: unused_field
  final $Res Function(MemberSearchState) _then;

  @override
  $Res call({
    Object? searchResultMembers = freezed,
  }) {
    return _then(_value.copyWith(
      searchResultMembers: searchResultMembers == freezed
          ? _value.searchResultMembers
          : searchResultMembers // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberSearchStateCopyWith<$Res>
    implements $MemberSearchStateCopyWith<$Res> {
  factory _$$_MemberSearchStateCopyWith(_$_MemberSearchState value,
          $Res Function(_$_MemberSearchState) then) =
      __$$_MemberSearchStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MemberModel> searchResultMembers});
}

/// @nodoc
class __$$_MemberSearchStateCopyWithImpl<$Res>
    extends _$MemberSearchStateCopyWithImpl<$Res>
    implements _$$_MemberSearchStateCopyWith<$Res> {
  __$$_MemberSearchStateCopyWithImpl(
      _$_MemberSearchState _value, $Res Function(_$_MemberSearchState) _then)
      : super(_value, (v) => _then(v as _$_MemberSearchState));

  @override
  _$_MemberSearchState get _value => super._value as _$_MemberSearchState;

  @override
  $Res call({
    Object? searchResultMembers = freezed,
  }) {
    return _then(_$_MemberSearchState(
      searchResultMembers: searchResultMembers == freezed
          ? _value._searchResultMembers
          : searchResultMembers // ignore: cast_nullable_to_non_nullable
              as List<MemberModel>,
    ));
  }
}

/// @nodoc

class _$_MemberSearchState implements _MemberSearchState {
  const _$_MemberSearchState(
      {required final List<MemberModel> searchResultMembers})
      : _searchResultMembers = searchResultMembers;

  final List<MemberModel> _searchResultMembers;
  @override
  List<MemberModel> get searchResultMembers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultMembers);
  }

  @override
  String toString() {
    return 'MemberSearchState(searchResultMembers: $searchResultMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberSearchState &&
            const DeepCollectionEquality()
                .equals(other._searchResultMembers, _searchResultMembers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResultMembers));

  @JsonKey(ignore: true)
  @override
  _$$_MemberSearchStateCopyWith<_$_MemberSearchState> get copyWith =>
      __$$_MemberSearchStateCopyWithImpl<_$_MemberSearchState>(
          this, _$identity);
}

abstract class _MemberSearchState implements MemberSearchState {
  const factory _MemberSearchState(
          {required final List<MemberModel> searchResultMembers}) =
      _$_MemberSearchState;

  @override
  List<MemberModel> get searchResultMembers;
  @override
  @JsonKey(ignore: true)
  _$$_MemberSearchStateCopyWith<_$_MemberSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
