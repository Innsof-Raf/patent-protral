// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteMemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteMemberEvent()';
}


}

/// @nodoc
class $DeleteMemberEventCopyWith<$Res>  {
$DeleteMemberEventCopyWith(DeleteMemberEvent _, $Res Function(DeleteMemberEvent) __);
}


/// Adds pattern-matching-related methods to [DeleteMemberEvent].
extension DeleteMemberEventPatterns on DeleteMemberEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateSelectedMemberList value)?  updateSelectedMemberList,TResult Function( ClearSelectedMemberList value)?  clearSelectedMemberList,TResult Function( SelectAllMembers value)?  selectAllMembers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateSelectedMemberList() when updateSelectedMemberList != null:
return updateSelectedMemberList(_that);case ClearSelectedMemberList() when clearSelectedMemberList != null:
return clearSelectedMemberList(_that);case SelectAllMembers() when selectAllMembers != null:
return selectAllMembers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateSelectedMemberList value)  updateSelectedMemberList,required TResult Function( ClearSelectedMemberList value)  clearSelectedMemberList,required TResult Function( SelectAllMembers value)  selectAllMembers,}){
final _that = this;
switch (_that) {
case UpdateSelectedMemberList():
return updateSelectedMemberList(_that);case ClearSelectedMemberList():
return clearSelectedMemberList(_that);case SelectAllMembers():
return selectAllMembers(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateSelectedMemberList value)?  updateSelectedMemberList,TResult? Function( ClearSelectedMemberList value)?  clearSelectedMemberList,TResult? Function( SelectAllMembers value)?  selectAllMembers,}){
final _that = this;
switch (_that) {
case UpdateSelectedMemberList() when updateSelectedMemberList != null:
return updateSelectedMemberList(_that);case ClearSelectedMemberList() when clearSelectedMemberList != null:
return clearSelectedMemberList(_that);case SelectAllMembers() when selectAllMembers != null:
return selectAllMembers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int memberId)?  updateSelectedMemberList,TResult Function()?  clearSelectedMemberList,TResult Function( List<int> membersIdList)?  selectAllMembers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateSelectedMemberList() when updateSelectedMemberList != null:
return updateSelectedMemberList(_that.memberId);case ClearSelectedMemberList() when clearSelectedMemberList != null:
return clearSelectedMemberList();case SelectAllMembers() when selectAllMembers != null:
return selectAllMembers(_that.membersIdList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int memberId)  updateSelectedMemberList,required TResult Function()  clearSelectedMemberList,required TResult Function( List<int> membersIdList)  selectAllMembers,}) {final _that = this;
switch (_that) {
case UpdateSelectedMemberList():
return updateSelectedMemberList(_that.memberId);case ClearSelectedMemberList():
return clearSelectedMemberList();case SelectAllMembers():
return selectAllMembers(_that.membersIdList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int memberId)?  updateSelectedMemberList,TResult? Function()?  clearSelectedMemberList,TResult? Function( List<int> membersIdList)?  selectAllMembers,}) {final _that = this;
switch (_that) {
case UpdateSelectedMemberList() when updateSelectedMemberList != null:
return updateSelectedMemberList(_that.memberId);case ClearSelectedMemberList() when clearSelectedMemberList != null:
return clearSelectedMemberList();case SelectAllMembers() when selectAllMembers != null:
return selectAllMembers(_that.membersIdList);case _:
  return null;

}
}

}

/// @nodoc


class UpdateSelectedMemberList implements DeleteMemberEvent {
  const UpdateSelectedMemberList({required this.memberId});
  

 final  int memberId;

/// Create a copy of DeleteMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSelectedMemberListCopyWith<UpdateSelectedMemberList> get copyWith => _$UpdateSelectedMemberListCopyWithImpl<UpdateSelectedMemberList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSelectedMemberList&&(identical(other.memberId, memberId) || other.memberId == memberId));
}


@override
int get hashCode => Object.hash(runtimeType,memberId);

@override
String toString() {
  return 'DeleteMemberEvent.updateSelectedMemberList(memberId: $memberId)';
}


}

/// @nodoc
abstract mixin class $UpdateSelectedMemberListCopyWith<$Res> implements $DeleteMemberEventCopyWith<$Res> {
  factory $UpdateSelectedMemberListCopyWith(UpdateSelectedMemberList value, $Res Function(UpdateSelectedMemberList) _then) = _$UpdateSelectedMemberListCopyWithImpl;
@useResult
$Res call({
 int memberId
});




}
/// @nodoc
class _$UpdateSelectedMemberListCopyWithImpl<$Res>
    implements $UpdateSelectedMemberListCopyWith<$Res> {
  _$UpdateSelectedMemberListCopyWithImpl(this._self, this._then);

  final UpdateSelectedMemberList _self;
  final $Res Function(UpdateSelectedMemberList) _then;

/// Create a copy of DeleteMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? memberId = null,}) {
  return _then(UpdateSelectedMemberList(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ClearSelectedMemberList implements DeleteMemberEvent {
  const ClearSelectedMemberList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearSelectedMemberList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteMemberEvent.clearSelectedMemberList()';
}


}




/// @nodoc


class SelectAllMembers implements DeleteMemberEvent {
  const SelectAllMembers({required final  List<int> membersIdList}): _membersIdList = membersIdList;
  

 final  List<int> _membersIdList;
 List<int> get membersIdList {
  if (_membersIdList is EqualUnmodifiableListView) return _membersIdList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_membersIdList);
}


/// Create a copy of DeleteMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectAllMembersCopyWith<SelectAllMembers> get copyWith => _$SelectAllMembersCopyWithImpl<SelectAllMembers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectAllMembers&&const DeepCollectionEquality().equals(other._membersIdList, _membersIdList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_membersIdList));

@override
String toString() {
  return 'DeleteMemberEvent.selectAllMembers(membersIdList: $membersIdList)';
}


}

/// @nodoc
abstract mixin class $SelectAllMembersCopyWith<$Res> implements $DeleteMemberEventCopyWith<$Res> {
  factory $SelectAllMembersCopyWith(SelectAllMembers value, $Res Function(SelectAllMembers) _then) = _$SelectAllMembersCopyWithImpl;
@useResult
$Res call({
 List<int> membersIdList
});




}
/// @nodoc
class _$SelectAllMembersCopyWithImpl<$Res>
    implements $SelectAllMembersCopyWith<$Res> {
  _$SelectAllMembersCopyWithImpl(this._self, this._then);

  final SelectAllMembers _self;
  final $Res Function(SelectAllMembers) _then;

/// Create a copy of DeleteMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? membersIdList = null,}) {
  return _then(SelectAllMembers(
membersIdList: null == membersIdList ? _self._membersIdList : membersIdList // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc
mixin _$DeleteMemberState {

 List<int> get selectedMebersList;
/// Create a copy of DeleteMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMemberStateCopyWith<DeleteMemberState> get copyWith => _$DeleteMemberStateCopyWithImpl<DeleteMemberState>(this as DeleteMemberState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMemberState&&const DeepCollectionEquality().equals(other.selectedMebersList, selectedMebersList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedMebersList));

@override
String toString() {
  return 'DeleteMemberState(selectedMebersList: $selectedMebersList)';
}


}

/// @nodoc
abstract mixin class $DeleteMemberStateCopyWith<$Res>  {
  factory $DeleteMemberStateCopyWith(DeleteMemberState value, $Res Function(DeleteMemberState) _then) = _$DeleteMemberStateCopyWithImpl;
@useResult
$Res call({
 List<int> selectedMebersList
});




}
/// @nodoc
class _$DeleteMemberStateCopyWithImpl<$Res>
    implements $DeleteMemberStateCopyWith<$Res> {
  _$DeleteMemberStateCopyWithImpl(this._self, this._then);

  final DeleteMemberState _self;
  final $Res Function(DeleteMemberState) _then;

/// Create a copy of DeleteMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedMebersList = null,}) {
  return _then(_self.copyWith(
selectedMebersList: null == selectedMebersList ? _self.selectedMebersList : selectedMebersList // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteMemberState].
extension DeleteMemberStatePatterns on DeleteMemberState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteMemberState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteMemberState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteMemberState value)  $default,){
final _that = this;
switch (_that) {
case _DeleteMemberState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteMemberState value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteMemberState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> selectedMebersList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteMemberState() when $default != null:
return $default(_that.selectedMebersList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> selectedMebersList)  $default,) {final _that = this;
switch (_that) {
case _DeleteMemberState():
return $default(_that.selectedMebersList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> selectedMebersList)?  $default,) {final _that = this;
switch (_that) {
case _DeleteMemberState() when $default != null:
return $default(_that.selectedMebersList);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteMemberState implements DeleteMemberState {
  const _DeleteMemberState({required final  List<int> selectedMebersList}): _selectedMebersList = selectedMebersList;
  

 final  List<int> _selectedMebersList;
@override List<int> get selectedMebersList {
  if (_selectedMebersList is EqualUnmodifiableListView) return _selectedMebersList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedMebersList);
}


/// Create a copy of DeleteMemberState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMemberStateCopyWith<_DeleteMemberState> get copyWith => __$DeleteMemberStateCopyWithImpl<_DeleteMemberState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMemberState&&const DeepCollectionEquality().equals(other._selectedMebersList, _selectedMebersList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedMebersList));

@override
String toString() {
  return 'DeleteMemberState(selectedMebersList: $selectedMebersList)';
}


}

/// @nodoc
abstract mixin class _$DeleteMemberStateCopyWith<$Res> implements $DeleteMemberStateCopyWith<$Res> {
  factory _$DeleteMemberStateCopyWith(_DeleteMemberState value, $Res Function(_DeleteMemberState) _then) = __$DeleteMemberStateCopyWithImpl;
@override @useResult
$Res call({
 List<int> selectedMebersList
});




}
/// @nodoc
class __$DeleteMemberStateCopyWithImpl<$Res>
    implements _$DeleteMemberStateCopyWith<$Res> {
  __$DeleteMemberStateCopyWithImpl(this._self, this._then);

  final _DeleteMemberState _self;
  final $Res Function(_DeleteMemberState) _then;

/// Create a copy of DeleteMemberState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedMebersList = null,}) {
  return _then(_DeleteMemberState(
selectedMebersList: null == selectedMebersList ? _self._selectedMebersList : selectedMebersList // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
