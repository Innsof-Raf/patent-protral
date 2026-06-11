// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StoreUserDetails value)?  storeUserDetails,TResult Function( AddMember value)?  addMember,TResult Function( ChangememberInsuranceDetails value)?  changememberInsuranceDetails,TResult Function( ChangeMemberAddingSateToInitial value)?  changeMemberAddingSateToInitial,TResult Function( GetMemberDetail value)?  getMemberDetail,TResult Function( AddMemberToLocal value)?  addMemberToLocal,TResult Function( UpdateMemberInLocal value)?  updateMemberInLocal,TResult Function( LogOut value)?  logOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StoreUserDetails() when storeUserDetails != null:
return storeUserDetails(_that);case AddMember() when addMember != null:
return addMember(_that);case ChangememberInsuranceDetails() when changememberInsuranceDetails != null:
return changememberInsuranceDetails(_that);case ChangeMemberAddingSateToInitial() when changeMemberAddingSateToInitial != null:
return changeMemberAddingSateToInitial(_that);case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that);case AddMemberToLocal() when addMemberToLocal != null:
return addMemberToLocal(_that);case UpdateMemberInLocal() when updateMemberInLocal != null:
return updateMemberInLocal(_that);case LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StoreUserDetails value)  storeUserDetails,required TResult Function( AddMember value)  addMember,required TResult Function( ChangememberInsuranceDetails value)  changememberInsuranceDetails,required TResult Function( ChangeMemberAddingSateToInitial value)  changeMemberAddingSateToInitial,required TResult Function( GetMemberDetail value)  getMemberDetail,required TResult Function( AddMemberToLocal value)  addMemberToLocal,required TResult Function( UpdateMemberInLocal value)  updateMemberInLocal,required TResult Function( LogOut value)  logOut,}){
final _that = this;
switch (_that) {
case StoreUserDetails():
return storeUserDetails(_that);case AddMember():
return addMember(_that);case ChangememberInsuranceDetails():
return changememberInsuranceDetails(_that);case ChangeMemberAddingSateToInitial():
return changeMemberAddingSateToInitial(_that);case GetMemberDetail():
return getMemberDetail(_that);case AddMemberToLocal():
return addMemberToLocal(_that);case UpdateMemberInLocal():
return updateMemberInLocal(_that);case LogOut():
return logOut(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StoreUserDetails value)?  storeUserDetails,TResult? Function( AddMember value)?  addMember,TResult? Function( ChangememberInsuranceDetails value)?  changememberInsuranceDetails,TResult? Function( ChangeMemberAddingSateToInitial value)?  changeMemberAddingSateToInitial,TResult? Function( GetMemberDetail value)?  getMemberDetail,TResult? Function( AddMemberToLocal value)?  addMemberToLocal,TResult? Function( UpdateMemberInLocal value)?  updateMemberInLocal,TResult? Function( LogOut value)?  logOut,}){
final _that = this;
switch (_that) {
case StoreUserDetails() when storeUserDetails != null:
return storeUserDetails(_that);case AddMember() when addMember != null:
return addMember(_that);case ChangememberInsuranceDetails() when changememberInsuranceDetails != null:
return changememberInsuranceDetails(_that);case ChangeMemberAddingSateToInitial() when changeMemberAddingSateToInitial != null:
return changeMemberAddingSateToInitial(_that);case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that);case AddMemberToLocal() when addMemberToLocal != null:
return addMemberToLocal(_that);case UpdateMemberInLocal() when updateMemberInLocal != null:
return updateMemberInLocal(_that);case LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProfileParams params)?  storeUserDetails,TResult Function( ProfileParams params)?  addMember,TResult Function( ProfileParams params)?  changememberInsuranceDetails,TResult Function()?  changeMemberAddingSateToInitial,TResult Function( ProfileParams params)?  getMemberDetail,TResult Function( ProfileParams params)?  addMemberToLocal,TResult Function( ProfileParams params)?  updateMemberInLocal,TResult Function()?  logOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StoreUserDetails() when storeUserDetails != null:
return storeUserDetails(_that.params);case AddMember() when addMember != null:
return addMember(_that.params);case ChangememberInsuranceDetails() when changememberInsuranceDetails != null:
return changememberInsuranceDetails(_that.params);case ChangeMemberAddingSateToInitial() when changeMemberAddingSateToInitial != null:
return changeMemberAddingSateToInitial();case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that.params);case AddMemberToLocal() when addMemberToLocal != null:
return addMemberToLocal(_that.params);case UpdateMemberInLocal() when updateMemberInLocal != null:
return updateMemberInLocal(_that.params);case LogOut() when logOut != null:
return logOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProfileParams params)  storeUserDetails,required TResult Function( ProfileParams params)  addMember,required TResult Function( ProfileParams params)  changememberInsuranceDetails,required TResult Function()  changeMemberAddingSateToInitial,required TResult Function( ProfileParams params)  getMemberDetail,required TResult Function( ProfileParams params)  addMemberToLocal,required TResult Function( ProfileParams params)  updateMemberInLocal,required TResult Function()  logOut,}) {final _that = this;
switch (_that) {
case StoreUserDetails():
return storeUserDetails(_that.params);case AddMember():
return addMember(_that.params);case ChangememberInsuranceDetails():
return changememberInsuranceDetails(_that.params);case ChangeMemberAddingSateToInitial():
return changeMemberAddingSateToInitial();case GetMemberDetail():
return getMemberDetail(_that.params);case AddMemberToLocal():
return addMemberToLocal(_that.params);case UpdateMemberInLocal():
return updateMemberInLocal(_that.params);case LogOut():
return logOut();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProfileParams params)?  storeUserDetails,TResult? Function( ProfileParams params)?  addMember,TResult? Function( ProfileParams params)?  changememberInsuranceDetails,TResult? Function()?  changeMemberAddingSateToInitial,TResult? Function( ProfileParams params)?  getMemberDetail,TResult? Function( ProfileParams params)?  addMemberToLocal,TResult? Function( ProfileParams params)?  updateMemberInLocal,TResult? Function()?  logOut,}) {final _that = this;
switch (_that) {
case StoreUserDetails() when storeUserDetails != null:
return storeUserDetails(_that.params);case AddMember() when addMember != null:
return addMember(_that.params);case ChangememberInsuranceDetails() when changememberInsuranceDetails != null:
return changememberInsuranceDetails(_that.params);case ChangeMemberAddingSateToInitial() when changeMemberAddingSateToInitial != null:
return changeMemberAddingSateToInitial();case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that.params);case AddMemberToLocal() when addMemberToLocal != null:
return addMemberToLocal(_that.params);case UpdateMemberInLocal() when updateMemberInLocal != null:
return updateMemberInLocal(_that.params);case LogOut() when logOut != null:
return logOut();case _:
  return null;

}
}

}

/// @nodoc


class StoreUserDetails implements UserEvent {
  const StoreUserDetails({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreUserDetailsCopyWith<StoreUserDetails> get copyWith => _$StoreUserDetailsCopyWithImpl<StoreUserDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreUserDetails&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.storeUserDetails(params: $params)';
}


}

/// @nodoc
abstract mixin class $StoreUserDetailsCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $StoreUserDetailsCopyWith(StoreUserDetails value, $Res Function(StoreUserDetails) _then) = _$StoreUserDetailsCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$StoreUserDetailsCopyWithImpl<$Res>
    implements $StoreUserDetailsCopyWith<$Res> {
  _$StoreUserDetailsCopyWithImpl(this._self, this._then);

  final StoreUserDetails _self;
  final $Res Function(StoreUserDetails) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(StoreUserDetails(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class AddMember implements UserEvent {
  const AddMember({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberCopyWith<AddMember> get copyWith => _$AddMemberCopyWithImpl<AddMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMember&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.addMember(params: $params)';
}


}

/// @nodoc
abstract mixin class $AddMemberCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $AddMemberCopyWith(AddMember value, $Res Function(AddMember) _then) = _$AddMemberCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AddMemberCopyWithImpl<$Res>
    implements $AddMemberCopyWith<$Res> {
  _$AddMemberCopyWithImpl(this._self, this._then);

  final AddMember _self;
  final $Res Function(AddMember) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AddMember(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ChangememberInsuranceDetails implements UserEvent {
  const ChangememberInsuranceDetails({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangememberInsuranceDetailsCopyWith<ChangememberInsuranceDetails> get copyWith => _$ChangememberInsuranceDetailsCopyWithImpl<ChangememberInsuranceDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangememberInsuranceDetails&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.changememberInsuranceDetails(params: $params)';
}


}

/// @nodoc
abstract mixin class $ChangememberInsuranceDetailsCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $ChangememberInsuranceDetailsCopyWith(ChangememberInsuranceDetails value, $Res Function(ChangememberInsuranceDetails) _then) = _$ChangememberInsuranceDetailsCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ChangememberInsuranceDetailsCopyWithImpl<$Res>
    implements $ChangememberInsuranceDetailsCopyWith<$Res> {
  _$ChangememberInsuranceDetailsCopyWithImpl(this._self, this._then);

  final ChangememberInsuranceDetails _self;
  final $Res Function(ChangememberInsuranceDetails) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(ChangememberInsuranceDetails(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ChangeMemberAddingSateToInitial implements UserEvent {
  const ChangeMemberAddingSateToInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMemberAddingSateToInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.changeMemberAddingSateToInitial()';
}


}




/// @nodoc


class GetMemberDetail implements UserEvent {
  const GetMemberDetail({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMemberDetailCopyWith<GetMemberDetail> get copyWith => _$GetMemberDetailCopyWithImpl<GetMemberDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMemberDetail&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.getMemberDetail(params: $params)';
}


}

/// @nodoc
abstract mixin class $GetMemberDetailCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $GetMemberDetailCopyWith(GetMemberDetail value, $Res Function(GetMemberDetail) _then) = _$GetMemberDetailCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$GetMemberDetailCopyWithImpl<$Res>
    implements $GetMemberDetailCopyWith<$Res> {
  _$GetMemberDetailCopyWithImpl(this._self, this._then);

  final GetMemberDetail _self;
  final $Res Function(GetMemberDetail) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(GetMemberDetail(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class AddMemberToLocal implements UserEvent {
  const AddMemberToLocal({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberToLocalCopyWith<AddMemberToLocal> get copyWith => _$AddMemberToLocalCopyWithImpl<AddMemberToLocal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberToLocal&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.addMemberToLocal(params: $params)';
}


}

/// @nodoc
abstract mixin class $AddMemberToLocalCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $AddMemberToLocalCopyWith(AddMemberToLocal value, $Res Function(AddMemberToLocal) _then) = _$AddMemberToLocalCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AddMemberToLocalCopyWithImpl<$Res>
    implements $AddMemberToLocalCopyWith<$Res> {
  _$AddMemberToLocalCopyWithImpl(this._self, this._then);

  final AddMemberToLocal _self;
  final $Res Function(AddMemberToLocal) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AddMemberToLocal(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class UpdateMemberInLocal implements UserEvent {
  const UpdateMemberInLocal({required this.params});
  

 final  ProfileParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMemberInLocalCopyWith<UpdateMemberInLocal> get copyWith => _$UpdateMemberInLocalCopyWithImpl<UpdateMemberInLocal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMemberInLocal&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.updateMemberInLocal(params: $params)';
}


}

/// @nodoc
abstract mixin class $UpdateMemberInLocalCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $UpdateMemberInLocalCopyWith(UpdateMemberInLocal value, $Res Function(UpdateMemberInLocal) _then) = _$UpdateMemberInLocalCopyWithImpl;
@useResult
$Res call({
 ProfileParams params
});


$ProfileParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UpdateMemberInLocalCopyWithImpl<$Res>
    implements $UpdateMemberInLocalCopyWith<$Res> {
  _$UpdateMemberInLocalCopyWithImpl(this._self, this._then);

  final UpdateMemberInLocal _self;
  final $Res Function(UpdateMemberInLocal) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UpdateMemberInLocal(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProfileParams,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileParamsCopyWith<$Res> get params {
  
  return $ProfileParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class LogOut implements UserEvent {
  const LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.logOut()';
}


}




/// @nodoc
mixin _$UserState {

 User? get user; bool get isMemberAdding; bool get isMemberAddingFailed; bool get isMemberAddingSucess; bool get isFetchingMemberDetail; bool get isMemberDetailFetchingFailed; bool get isMemberDetailFetchingSucess; ErrorModel get error;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.user, user) || other.user == user)&&(identical(other.isMemberAdding, isMemberAdding) || other.isMemberAdding == isMemberAdding)&&(identical(other.isMemberAddingFailed, isMemberAddingFailed) || other.isMemberAddingFailed == isMemberAddingFailed)&&(identical(other.isMemberAddingSucess, isMemberAddingSucess) || other.isMemberAddingSucess == isMemberAddingSucess)&&(identical(other.isFetchingMemberDetail, isFetchingMemberDetail) || other.isFetchingMemberDetail == isFetchingMemberDetail)&&(identical(other.isMemberDetailFetchingFailed, isMemberDetailFetchingFailed) || other.isMemberDetailFetchingFailed == isMemberDetailFetchingFailed)&&(identical(other.isMemberDetailFetchingSucess, isMemberDetailFetchingSucess) || other.isMemberDetailFetchingSucess == isMemberDetailFetchingSucess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,user,isMemberAdding,isMemberAddingFailed,isMemberAddingSucess,isFetchingMemberDetail,isMemberDetailFetchingFailed,isMemberDetailFetchingSucess,error);

@override
String toString() {
  return 'UserState(user: $user, isMemberAdding: $isMemberAdding, isMemberAddingFailed: $isMemberAddingFailed, isMemberAddingSucess: $isMemberAddingSucess, isFetchingMemberDetail: $isFetchingMemberDetail, isMemberDetailFetchingFailed: $isMemberDetailFetchingFailed, isMemberDetailFetchingSucess: $isMemberDetailFetchingSucess, error: $error)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 User? user, bool isMemberAdding, bool isMemberAddingFailed, bool isMemberAddingSucess, bool isFetchingMemberDetail, bool isMemberDetailFetchingFailed, bool isMemberDetailFetchingSucess, ErrorModel error
});


$UserCopyWith<$Res>? get user;$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? isMemberAdding = null,Object? isMemberAddingFailed = null,Object? isMemberAddingSucess = null,Object? isFetchingMemberDetail = null,Object? isMemberDetailFetchingFailed = null,Object? isMemberDetailFetchingSucess = null,Object? error = null,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,isMemberAdding: null == isMemberAdding ? _self.isMemberAdding : isMemberAdding // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingFailed: null == isMemberAddingFailed ? _self.isMemberAddingFailed : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingSucess: null == isMemberAddingSucess ? _self.isMemberAddingSucess : isMemberAddingSucess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMemberDetail: null == isFetchingMemberDetail ? _self.isFetchingMemberDetail : isFetchingMemberDetail // ignore: cast_nullable_to_non_nullable
as bool,isMemberDetailFetchingFailed: null == isMemberDetailFetchingFailed ? _self.isMemberDetailFetchingFailed : isMemberDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberDetailFetchingSucess: null == isMemberDetailFetchingSucess ? _self.isMemberDetailFetchingSucess : isMemberDetailFetchingSucess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSucess,  bool isFetchingMemberDetail,  bool isMemberDetailFetchingFailed,  bool isMemberDetailFetchingSucess,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.user,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSucess,_that.isFetchingMemberDetail,_that.isMemberDetailFetchingFailed,_that.isMemberDetailFetchingSucess,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSucess,  bool isFetchingMemberDetail,  bool isMemberDetailFetchingFailed,  bool isMemberDetailFetchingSucess,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.user,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSucess,_that.isFetchingMemberDetail,_that.isMemberDetailFetchingFailed,_that.isMemberDetailFetchingSucess,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSucess,  bool isFetchingMemberDetail,  bool isMemberDetailFetchingFailed,  bool isMemberDetailFetchingSucess,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.user,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSucess,_that.isFetchingMemberDetail,_that.isMemberDetailFetchingFailed,_that.isMemberDetailFetchingSucess,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
  const _UserState({required this.user, required this.isMemberAdding, required this.isMemberAddingFailed, required this.isMemberAddingSucess, required this.isFetchingMemberDetail, required this.isMemberDetailFetchingFailed, required this.isMemberDetailFetchingSucess, required this.error});
  

@override final  User? user;
@override final  bool isMemberAdding;
@override final  bool isMemberAddingFailed;
@override final  bool isMemberAddingSucess;
@override final  bool isFetchingMemberDetail;
@override final  bool isMemberDetailFetchingFailed;
@override final  bool isMemberDetailFetchingSucess;
@override final  ErrorModel error;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.user, user) || other.user == user)&&(identical(other.isMemberAdding, isMemberAdding) || other.isMemberAdding == isMemberAdding)&&(identical(other.isMemberAddingFailed, isMemberAddingFailed) || other.isMemberAddingFailed == isMemberAddingFailed)&&(identical(other.isMemberAddingSucess, isMemberAddingSucess) || other.isMemberAddingSucess == isMemberAddingSucess)&&(identical(other.isFetchingMemberDetail, isFetchingMemberDetail) || other.isFetchingMemberDetail == isFetchingMemberDetail)&&(identical(other.isMemberDetailFetchingFailed, isMemberDetailFetchingFailed) || other.isMemberDetailFetchingFailed == isMemberDetailFetchingFailed)&&(identical(other.isMemberDetailFetchingSucess, isMemberDetailFetchingSucess) || other.isMemberDetailFetchingSucess == isMemberDetailFetchingSucess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,user,isMemberAdding,isMemberAddingFailed,isMemberAddingSucess,isFetchingMemberDetail,isMemberDetailFetchingFailed,isMemberDetailFetchingSucess,error);

@override
String toString() {
  return 'UserState(user: $user, isMemberAdding: $isMemberAdding, isMemberAddingFailed: $isMemberAddingFailed, isMemberAddingSucess: $isMemberAddingSucess, isFetchingMemberDetail: $isFetchingMemberDetail, isMemberDetailFetchingFailed: $isMemberDetailFetchingFailed, isMemberDetailFetchingSucess: $isMemberDetailFetchingSucess, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 User? user, bool isMemberAdding, bool isMemberAddingFailed, bool isMemberAddingSucess, bool isFetchingMemberDetail, bool isMemberDetailFetchingFailed, bool isMemberDetailFetchingSucess, ErrorModel error
});


@override $UserCopyWith<$Res>? get user;@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? isMemberAdding = null,Object? isMemberAddingFailed = null,Object? isMemberAddingSucess = null,Object? isFetchingMemberDetail = null,Object? isMemberDetailFetchingFailed = null,Object? isMemberDetailFetchingSucess = null,Object? error = null,}) {
  return _then(_UserState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,isMemberAdding: null == isMemberAdding ? _self.isMemberAdding : isMemberAdding // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingFailed: null == isMemberAddingFailed ? _self.isMemberAddingFailed : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingSucess: null == isMemberAddingSucess ? _self.isMemberAddingSucess : isMemberAddingSucess // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMemberDetail: null == isFetchingMemberDetail ? _self.isFetchingMemberDetail : isFetchingMemberDetail // ignore: cast_nullable_to_non_nullable
as bool,isMemberDetailFetchingFailed: null == isMemberDetailFetchingFailed ? _self.isMemberDetailFetchingFailed : isMemberDetailFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberDetailFetchingSucess: null == isMemberDetailFetchingSucess ? _self.isMemberDetailFetchingSucess : isMemberDetailFetchingSucess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
