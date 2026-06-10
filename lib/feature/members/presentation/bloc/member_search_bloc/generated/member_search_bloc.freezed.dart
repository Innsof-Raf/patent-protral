// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberSearchEvent {

 List<Member> get members; String get searchKey;
/// Create a copy of MemberSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberSearchEventCopyWith<MemberSearchEvent> get copyWith => _$MemberSearchEventCopyWithImpl<MemberSearchEvent>(this as MemberSearchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberSearchEvent&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(members),searchKey);

@override
String toString() {
  return 'MemberSearchEvent(members: $members, searchKey: $searchKey)';
}


}

/// @nodoc
abstract mixin class $MemberSearchEventCopyWith<$Res>  {
  factory $MemberSearchEventCopyWith(MemberSearchEvent value, $Res Function(MemberSearchEvent) _then) = _$MemberSearchEventCopyWithImpl;
@useResult
$Res call({
 List<Member> members, String searchKey
});




}
/// @nodoc
class _$MemberSearchEventCopyWithImpl<$Res>
    implements $MemberSearchEventCopyWith<$Res> {
  _$MemberSearchEventCopyWithImpl(this._self, this._then);

  final MemberSearchEvent _self;
  final $Res Function(MemberSearchEvent) _then;

/// Create a copy of MemberSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? members = null,Object? searchKey = null,}) {
  return _then(_self.copyWith(
members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberSearchEvent].
extension MemberSearchEventPatterns on MemberSearchEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchMember value)?  searchMember,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchMember() when searchMember != null:
return searchMember(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchMember value)  searchMember,}){
final _that = this;
switch (_that) {
case SearchMember():
return searchMember(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchMember value)?  searchMember,}){
final _that = this;
switch (_that) {
case SearchMember() when searchMember != null:
return searchMember(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Member> members,  String searchKey)?  searchMember,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchMember() when searchMember != null:
return searchMember(_that.members,_that.searchKey);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Member> members,  String searchKey)  searchMember,}) {final _that = this;
switch (_that) {
case SearchMember():
return searchMember(_that.members,_that.searchKey);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Member> members,  String searchKey)?  searchMember,}) {final _that = this;
switch (_that) {
case SearchMember() when searchMember != null:
return searchMember(_that.members,_that.searchKey);case _:
  return null;

}
}

}

/// @nodoc


class SearchMember implements MemberSearchEvent {
  const SearchMember({required final  List<Member> members, required this.searchKey}): _members = members;
  

 final  List<Member> _members;
@override List<Member> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override final  String searchKey;

/// Create a copy of MemberSearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMemberCopyWith<SearchMember> get copyWith => _$SearchMemberCopyWithImpl<SearchMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMember&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.searchKey, searchKey) || other.searchKey == searchKey));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members),searchKey);

@override
String toString() {
  return 'MemberSearchEvent.searchMember(members: $members, searchKey: $searchKey)';
}


}

/// @nodoc
abstract mixin class $SearchMemberCopyWith<$Res> implements $MemberSearchEventCopyWith<$Res> {
  factory $SearchMemberCopyWith(SearchMember value, $Res Function(SearchMember) _then) = _$SearchMemberCopyWithImpl;
@override @useResult
$Res call({
 List<Member> members, String searchKey
});




}
/// @nodoc
class _$SearchMemberCopyWithImpl<$Res>
    implements $SearchMemberCopyWith<$Res> {
  _$SearchMemberCopyWithImpl(this._self, this._then);

  final SearchMember _self;
  final $Res Function(SearchMember) _then;

/// Create a copy of MemberSearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? members = null,Object? searchKey = null,}) {
  return _then(SearchMember(
members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,searchKey: null == searchKey ? _self.searchKey : searchKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MemberSearchState {

 List<Member> get searchResultMembers;
/// Create a copy of MemberSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberSearchStateCopyWith<MemberSearchState> get copyWith => _$MemberSearchStateCopyWithImpl<MemberSearchState>(this as MemberSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberSearchState&&const DeepCollectionEquality().equals(other.searchResultMembers, searchResultMembers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResultMembers));

@override
String toString() {
  return 'MemberSearchState(searchResultMembers: $searchResultMembers)';
}


}

/// @nodoc
abstract mixin class $MemberSearchStateCopyWith<$Res>  {
  factory $MemberSearchStateCopyWith(MemberSearchState value, $Res Function(MemberSearchState) _then) = _$MemberSearchStateCopyWithImpl;
@useResult
$Res call({
 List<Member> searchResultMembers
});




}
/// @nodoc
class _$MemberSearchStateCopyWithImpl<$Res>
    implements $MemberSearchStateCopyWith<$Res> {
  _$MemberSearchStateCopyWithImpl(this._self, this._then);

  final MemberSearchState _self;
  final $Res Function(MemberSearchState) _then;

/// Create a copy of MemberSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResultMembers = null,}) {
  return _then(_self.copyWith(
searchResultMembers: null == searchResultMembers ? _self.searchResultMembers : searchResultMembers // ignore: cast_nullable_to_non_nullable
as List<Member>,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberSearchState].
extension MemberSearchStatePatterns on MemberSearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberSearchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberSearchState value)  $default,){
final _that = this;
switch (_that) {
case _MemberSearchState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _MemberSearchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Member> searchResultMembers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberSearchState() when $default != null:
return $default(_that.searchResultMembers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Member> searchResultMembers)  $default,) {final _that = this;
switch (_that) {
case _MemberSearchState():
return $default(_that.searchResultMembers);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Member> searchResultMembers)?  $default,) {final _that = this;
switch (_that) {
case _MemberSearchState() when $default != null:
return $default(_that.searchResultMembers);case _:
  return null;

}
}

}

/// @nodoc


class _MemberSearchState implements MemberSearchState {
  const _MemberSearchState({required final  List<Member> searchResultMembers}): _searchResultMembers = searchResultMembers;
  

 final  List<Member> _searchResultMembers;
@override List<Member> get searchResultMembers {
  if (_searchResultMembers is EqualUnmodifiableListView) return _searchResultMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResultMembers);
}


/// Create a copy of MemberSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberSearchStateCopyWith<_MemberSearchState> get copyWith => __$MemberSearchStateCopyWithImpl<_MemberSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberSearchState&&const DeepCollectionEquality().equals(other._searchResultMembers, _searchResultMembers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResultMembers));

@override
String toString() {
  return 'MemberSearchState(searchResultMembers: $searchResultMembers)';
}


}

/// @nodoc
abstract mixin class _$MemberSearchStateCopyWith<$Res> implements $MemberSearchStateCopyWith<$Res> {
  factory _$MemberSearchStateCopyWith(_MemberSearchState value, $Res Function(_MemberSearchState) _then) = __$MemberSearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<Member> searchResultMembers
});




}
/// @nodoc
class __$MemberSearchStateCopyWithImpl<$Res>
    implements _$MemberSearchStateCopyWith<$Res> {
  __$MemberSearchStateCopyWithImpl(this._self, this._then);

  final _MemberSearchState _self;
  final $Res Function(_MemberSearchState) _then;

/// Create a copy of MemberSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResultMembers = null,}) {
  return _then(_MemberSearchState(
searchResultMembers: null == searchResultMembers ? _self._searchResultMembers : searchResultMembers // ignore: cast_nullable_to_non_nullable
as List<Member>,
  ));
}


}

// dart format on
