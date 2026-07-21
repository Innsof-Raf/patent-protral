// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddMemberEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddMemberEvent()';
}


}

/// @nodoc
class $AddMemberEventCopyWith<$Res>  {
$AddMemberEventCopyWith(AddMemberEvent _, $Res Function(AddMemberEvent) __);
}


/// Adds pattern-matching-related methods to [AddMemberEvent].
extension AddMemberEventPatterns on AddMemberEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInsurances value)?  fetchInsurances,TResult Function( AddMemberAction value)?  addMemberAction,TResult Function( UpdateInsuranceAction value)?  updateInsuranceAction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInsurances() when fetchInsurances != null:
return fetchInsurances(_that);case AddMemberAction() when addMemberAction != null:
return addMemberAction(_that);case UpdateInsuranceAction() when updateInsuranceAction != null:
return updateInsuranceAction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInsurances value)  fetchInsurances,required TResult Function( AddMemberAction value)  addMemberAction,required TResult Function( UpdateInsuranceAction value)  updateInsuranceAction,}){
final _that = this;
switch (_that) {
case FetchInsurances():
return fetchInsurances(_that);case AddMemberAction():
return addMemberAction(_that);case UpdateInsuranceAction():
return updateInsuranceAction(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInsurances value)?  fetchInsurances,TResult? Function( AddMemberAction value)?  addMemberAction,TResult? Function( UpdateInsuranceAction value)?  updateInsuranceAction,}){
final _that = this;
switch (_that) {
case FetchInsurances() when fetchInsurances != null:
return fetchInsurances(_that);case AddMemberAction() when addMemberAction != null:
return addMemberAction(_that);case UpdateInsuranceAction() when updateInsuranceAction != null:
return updateInsuranceAction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  fetchInsurances,TResult Function( AddMemberParams params)?  addMemberAction,TResult Function( AddMemberParams params)?  updateInsuranceAction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInsurances() when fetchInsurances != null:
return fetchInsurances(_that.token);case AddMemberAction() when addMemberAction != null:
return addMemberAction(_that.params);case UpdateInsuranceAction() when updateInsuranceAction != null:
return updateInsuranceAction(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  fetchInsurances,required TResult Function( AddMemberParams params)  addMemberAction,required TResult Function( AddMemberParams params)  updateInsuranceAction,}) {final _that = this;
switch (_that) {
case FetchInsurances():
return fetchInsurances(_that.token);case AddMemberAction():
return addMemberAction(_that.params);case UpdateInsuranceAction():
return updateInsuranceAction(_that.params);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  fetchInsurances,TResult? Function( AddMemberParams params)?  addMemberAction,TResult? Function( AddMemberParams params)?  updateInsuranceAction,}) {final _that = this;
switch (_that) {
case FetchInsurances() when fetchInsurances != null:
return fetchInsurances(_that.token);case AddMemberAction() when addMemberAction != null:
return addMemberAction(_that.params);case UpdateInsuranceAction() when updateInsuranceAction != null:
return updateInsuranceAction(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class FetchInsurances implements AddMemberEvent {
  const FetchInsurances({required this.token});
  

 final  String token;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInsurancesCopyWith<FetchInsurances> get copyWith => _$FetchInsurancesCopyWithImpl<FetchInsurances>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInsurances&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'AddMemberEvent.fetchInsurances(token: $token)';
}


}

/// @nodoc
abstract mixin class $FetchInsurancesCopyWith<$Res> implements $AddMemberEventCopyWith<$Res> {
  factory $FetchInsurancesCopyWith(FetchInsurances value, $Res Function(FetchInsurances) _then) = _$FetchInsurancesCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$FetchInsurancesCopyWithImpl<$Res>
    implements $FetchInsurancesCopyWith<$Res> {
  _$FetchInsurancesCopyWithImpl(this._self, this._then);

  final FetchInsurances _self;
  final $Res Function(FetchInsurances) _then;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(FetchInsurances(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddMemberAction implements AddMemberEvent {
  const AddMemberAction({required this.params});
  

 final  AddMemberParams params;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberActionCopyWith<AddMemberAction> get copyWith => _$AddMemberActionCopyWithImpl<AddMemberAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberAction&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AddMemberEvent.addMemberAction(params: $params)';
}


}

/// @nodoc
abstract mixin class $AddMemberActionCopyWith<$Res> implements $AddMemberEventCopyWith<$Res> {
  factory $AddMemberActionCopyWith(AddMemberAction value, $Res Function(AddMemberAction) _then) = _$AddMemberActionCopyWithImpl;
@useResult
$Res call({
 AddMemberParams params
});


$AddMemberParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AddMemberActionCopyWithImpl<$Res>
    implements $AddMemberActionCopyWith<$Res> {
  _$AddMemberActionCopyWithImpl(this._self, this._then);

  final AddMemberAction _self;
  final $Res Function(AddMemberAction) _then;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AddMemberAction(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddMemberParams,
  ));
}

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddMemberParamsCopyWith<$Res> get params {
  
  return $AddMemberParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class UpdateInsuranceAction implements AddMemberEvent {
  const UpdateInsuranceAction({required this.params});
  

 final  AddMemberParams params;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateInsuranceActionCopyWith<UpdateInsuranceAction> get copyWith => _$UpdateInsuranceActionCopyWithImpl<UpdateInsuranceAction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateInsuranceAction&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AddMemberEvent.updateInsuranceAction(params: $params)';
}


}

/// @nodoc
abstract mixin class $UpdateInsuranceActionCopyWith<$Res> implements $AddMemberEventCopyWith<$Res> {
  factory $UpdateInsuranceActionCopyWith(UpdateInsuranceAction value, $Res Function(UpdateInsuranceAction) _then) = _$UpdateInsuranceActionCopyWithImpl;
@useResult
$Res call({
 AddMemberParams params
});


$AddMemberParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UpdateInsuranceActionCopyWithImpl<$Res>
    implements $UpdateInsuranceActionCopyWith<$Res> {
  _$UpdateInsuranceActionCopyWithImpl(this._self, this._then);

  final UpdateInsuranceAction _self;
  final $Res Function(UpdateInsuranceAction) _then;

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UpdateInsuranceAction(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddMemberParams,
  ));
}

/// Create a copy of AddMemberEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddMemberParamsCopyWith<$Res> get params {
  
  return $AddMemberParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$AddMemberState {

 bool get isFetchingInsurances; bool get isInsuranceFetchingFailed; bool get isInsuranceFetchingSuccess; List<InsuranceModel> get insurances; bool get isMemberAdding; bool get isMemberAddingFailed; bool get isMemberAddingSuccess; Member? get newMember; ErrorModel get error;
/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMemberStateCopyWith<AddMemberState> get copyWith => _$AddMemberStateCopyWithImpl<AddMemberState>(this as AddMemberState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMemberState&&(identical(other.isFetchingInsurances, isFetchingInsurances) || other.isFetchingInsurances == isFetchingInsurances)&&(identical(other.isInsuranceFetchingFailed, isInsuranceFetchingFailed) || other.isInsuranceFetchingFailed == isInsuranceFetchingFailed)&&(identical(other.isInsuranceFetchingSuccess, isInsuranceFetchingSuccess) || other.isInsuranceFetchingSuccess == isInsuranceFetchingSuccess)&&const DeepCollectionEquality().equals(other.insurances, insurances)&&(identical(other.isMemberAdding, isMemberAdding) || other.isMemberAdding == isMemberAdding)&&(identical(other.isMemberAddingFailed, isMemberAddingFailed) || other.isMemberAddingFailed == isMemberAddingFailed)&&(identical(other.isMemberAddingSuccess, isMemberAddingSuccess) || other.isMemberAddingSuccess == isMemberAddingSuccess)&&(identical(other.newMember, newMember) || other.newMember == newMember)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingInsurances,isInsuranceFetchingFailed,isInsuranceFetchingSuccess,const DeepCollectionEquality().hash(insurances),isMemberAdding,isMemberAddingFailed,isMemberAddingSuccess,newMember,error);

@override
String toString() {
  return 'AddMemberState(isFetchingInsurances: $isFetchingInsurances, isInsuranceFetchingFailed: $isInsuranceFetchingFailed, isInsuranceFetchingSuccess: $isInsuranceFetchingSuccess, insurances: $insurances, isMemberAdding: $isMemberAdding, isMemberAddingFailed: $isMemberAddingFailed, isMemberAddingSuccess: $isMemberAddingSuccess, newMember: $newMember, error: $error)';
}


}

/// @nodoc
abstract mixin class $AddMemberStateCopyWith<$Res>  {
  factory $AddMemberStateCopyWith(AddMemberState value, $Res Function(AddMemberState) _then) = _$AddMemberStateCopyWithImpl;
@useResult
$Res call({
 bool isFetchingInsurances, bool isInsuranceFetchingFailed, bool isInsuranceFetchingSuccess, List<InsuranceModel> insurances, bool isMemberAdding, bool isMemberAddingFailed, bool isMemberAddingSuccess, Member? newMember, ErrorModel error
});


$MemberCopyWith<$Res>? get newMember;$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$AddMemberStateCopyWithImpl<$Res>
    implements $AddMemberStateCopyWith<$Res> {
  _$AddMemberStateCopyWithImpl(this._self, this._then);

  final AddMemberState _self;
  final $Res Function(AddMemberState) _then;

/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetchingInsurances = null,Object? isInsuranceFetchingFailed = null,Object? isInsuranceFetchingSuccess = null,Object? insurances = null,Object? isMemberAdding = null,Object? isMemberAddingFailed = null,Object? isMemberAddingSuccess = null,Object? newMember = freezed,Object? error = null,}) {
  return _then(_self.copyWith(
isFetchingInsurances: null == isFetchingInsurances ? _self.isFetchingInsurances : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFetchingFailed: null == isInsuranceFetchingFailed ? _self.isInsuranceFetchingFailed : isInsuranceFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFetchingSuccess: null == isInsuranceFetchingSuccess ? _self.isInsuranceFetchingSuccess : isInsuranceFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,insurances: null == insurances ? _self.insurances : insurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,isMemberAdding: null == isMemberAdding ? _self.isMemberAdding : isMemberAdding // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingFailed: null == isMemberAddingFailed ? _self.isMemberAddingFailed : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingSuccess: null == isMemberAddingSuccess ? _self.isMemberAddingSuccess : isMemberAddingSuccess // ignore: cast_nullable_to_non_nullable
as bool,newMember: freezed == newMember ? _self.newMember : newMember // ignore: cast_nullable_to_non_nullable
as Member?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}
/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res>? get newMember {
    if (_self.newMember == null) {
    return null;
  }

  return $MemberCopyWith<$Res>(_self.newMember!, (value) {
    return _then(_self.copyWith(newMember: value));
  });
}/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddMemberState].
extension AddMemberStatePatterns on AddMemberState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddMemberState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddMemberState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddMemberState value)  $default,){
final _that = this;
switch (_that) {
case _AddMemberState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddMemberState value)?  $default,){
final _that = this;
switch (_that) {
case _AddMemberState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetchingInsurances,  bool isInsuranceFetchingFailed,  bool isInsuranceFetchingSuccess,  List<InsuranceModel> insurances,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSuccess,  Member? newMember,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddMemberState() when $default != null:
return $default(_that.isFetchingInsurances,_that.isInsuranceFetchingFailed,_that.isInsuranceFetchingSuccess,_that.insurances,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSuccess,_that.newMember,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetchingInsurances,  bool isInsuranceFetchingFailed,  bool isInsuranceFetchingSuccess,  List<InsuranceModel> insurances,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSuccess,  Member? newMember,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _AddMemberState():
return $default(_that.isFetchingInsurances,_that.isInsuranceFetchingFailed,_that.isInsuranceFetchingSuccess,_that.insurances,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSuccess,_that.newMember,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetchingInsurances,  bool isInsuranceFetchingFailed,  bool isInsuranceFetchingSuccess,  List<InsuranceModel> insurances,  bool isMemberAdding,  bool isMemberAddingFailed,  bool isMemberAddingSuccess,  Member? newMember,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _AddMemberState() when $default != null:
return $default(_that.isFetchingInsurances,_that.isInsuranceFetchingFailed,_that.isInsuranceFetchingSuccess,_that.insurances,_that.isMemberAdding,_that.isMemberAddingFailed,_that.isMemberAddingSuccess,_that.newMember,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _AddMemberState implements AddMemberState {
  const _AddMemberState({required this.isFetchingInsurances, required this.isInsuranceFetchingFailed, required this.isInsuranceFetchingSuccess, required final  List<InsuranceModel> insurances, required this.isMemberAdding, required this.isMemberAddingFailed, required this.isMemberAddingSuccess, this.newMember, required this.error}): _insurances = insurances;
  

@override final  bool isFetchingInsurances;
@override final  bool isInsuranceFetchingFailed;
@override final  bool isInsuranceFetchingSuccess;
 final  List<InsuranceModel> _insurances;
@override List<InsuranceModel> get insurances {
  if (_insurances is EqualUnmodifiableListView) return _insurances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insurances);
}

@override final  bool isMemberAdding;
@override final  bool isMemberAddingFailed;
@override final  bool isMemberAddingSuccess;
@override final  Member? newMember;
@override final  ErrorModel error;

/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMemberStateCopyWith<_AddMemberState> get copyWith => __$AddMemberStateCopyWithImpl<_AddMemberState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMemberState&&(identical(other.isFetchingInsurances, isFetchingInsurances) || other.isFetchingInsurances == isFetchingInsurances)&&(identical(other.isInsuranceFetchingFailed, isInsuranceFetchingFailed) || other.isInsuranceFetchingFailed == isInsuranceFetchingFailed)&&(identical(other.isInsuranceFetchingSuccess, isInsuranceFetchingSuccess) || other.isInsuranceFetchingSuccess == isInsuranceFetchingSuccess)&&const DeepCollectionEquality().equals(other._insurances, _insurances)&&(identical(other.isMemberAdding, isMemberAdding) || other.isMemberAdding == isMemberAdding)&&(identical(other.isMemberAddingFailed, isMemberAddingFailed) || other.isMemberAddingFailed == isMemberAddingFailed)&&(identical(other.isMemberAddingSuccess, isMemberAddingSuccess) || other.isMemberAddingSuccess == isMemberAddingSuccess)&&(identical(other.newMember, newMember) || other.newMember == newMember)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetchingInsurances,isInsuranceFetchingFailed,isInsuranceFetchingSuccess,const DeepCollectionEquality().hash(_insurances),isMemberAdding,isMemberAddingFailed,isMemberAddingSuccess,newMember,error);

@override
String toString() {
  return 'AddMemberState(isFetchingInsurances: $isFetchingInsurances, isInsuranceFetchingFailed: $isInsuranceFetchingFailed, isInsuranceFetchingSuccess: $isInsuranceFetchingSuccess, insurances: $insurances, isMemberAdding: $isMemberAdding, isMemberAddingFailed: $isMemberAddingFailed, isMemberAddingSuccess: $isMemberAddingSuccess, newMember: $newMember, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AddMemberStateCopyWith<$Res> implements $AddMemberStateCopyWith<$Res> {
  factory _$AddMemberStateCopyWith(_AddMemberState value, $Res Function(_AddMemberState) _then) = __$AddMemberStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetchingInsurances, bool isInsuranceFetchingFailed, bool isInsuranceFetchingSuccess, List<InsuranceModel> insurances, bool isMemberAdding, bool isMemberAddingFailed, bool isMemberAddingSuccess, Member? newMember, ErrorModel error
});


@override $MemberCopyWith<$Res>? get newMember;@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$AddMemberStateCopyWithImpl<$Res>
    implements _$AddMemberStateCopyWith<$Res> {
  __$AddMemberStateCopyWithImpl(this._self, this._then);

  final _AddMemberState _self;
  final $Res Function(_AddMemberState) _then;

/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetchingInsurances = null,Object? isInsuranceFetchingFailed = null,Object? isInsuranceFetchingSuccess = null,Object? insurances = null,Object? isMemberAdding = null,Object? isMemberAddingFailed = null,Object? isMemberAddingSuccess = null,Object? newMember = freezed,Object? error = null,}) {
  return _then(_AddMemberState(
isFetchingInsurances: null == isFetchingInsurances ? _self.isFetchingInsurances : isFetchingInsurances // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFetchingFailed: null == isInsuranceFetchingFailed ? _self.isInsuranceFetchingFailed : isInsuranceFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceFetchingSuccess: null == isInsuranceFetchingSuccess ? _self.isInsuranceFetchingSuccess : isInsuranceFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,insurances: null == insurances ? _self._insurances : insurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,isMemberAdding: null == isMemberAdding ? _self.isMemberAdding : isMemberAdding // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingFailed: null == isMemberAddingFailed ? _self.isMemberAddingFailed : isMemberAddingFailed // ignore: cast_nullable_to_non_nullable
as bool,isMemberAddingSuccess: null == isMemberAddingSuccess ? _self.isMemberAddingSuccess : isMemberAddingSuccess // ignore: cast_nullable_to_non_nullable
as bool,newMember: freezed == newMember ? _self.newMember : newMember // ignore: cast_nullable_to_non_nullable
as Member?,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

/// Create a copy of AddMemberState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberCopyWith<$Res>? get newMember {
    if (_self.newMember == null) {
    return null;
  }

  return $MemberCopyWith<$Res>(_self.newMember!, (value) {
    return _then(_self.copyWith(newMember: value));
  });
}/// Create a copy of AddMemberState
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
