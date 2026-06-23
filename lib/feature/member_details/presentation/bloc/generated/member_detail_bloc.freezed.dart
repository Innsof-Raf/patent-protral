// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberDetailEvent {

 int get memberId; String get token;
/// Create a copy of MemberDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDetailEventCopyWith<MemberDetailEvent> get copyWith => _$MemberDetailEventCopyWithImpl<MemberDetailEvent>(this as MemberDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDetailEvent&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,token);

@override
String toString() {
  return 'MemberDetailEvent(memberId: $memberId, token: $token)';
}


}

/// @nodoc
abstract mixin class $MemberDetailEventCopyWith<$Res>  {
  factory $MemberDetailEventCopyWith(MemberDetailEvent value, $Res Function(MemberDetailEvent) _then) = _$MemberDetailEventCopyWithImpl;
@useResult
$Res call({
 int memberId, String token
});




}
/// @nodoc
class _$MemberDetailEventCopyWithImpl<$Res>
    implements $MemberDetailEventCopyWith<$Res> {
  _$MemberDetailEventCopyWithImpl(this._self, this._then);

  final MemberDetailEvent _self;
  final $Res Function(MemberDetailEvent) _then;

/// Create a copy of MemberDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? memberId = null,Object? token = null,}) {
  return _then(_self.copyWith(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberDetailEvent].
extension MemberDetailEventPatterns on MemberDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetMemberDetail value)?  getMemberDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetMemberDetail value)  getMemberDetail,}){
final _that = this;
switch (_that) {
case GetMemberDetail():
return getMemberDetail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetMemberDetail value)?  getMemberDetail,}){
final _that = this;
switch (_that) {
case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int memberId,  String token)?  getMemberDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that.memberId,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int memberId,  String token)  getMemberDetail,}) {final _that = this;
switch (_that) {
case GetMemberDetail():
return getMemberDetail(_that.memberId,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int memberId,  String token)?  getMemberDetail,}) {final _that = this;
switch (_that) {
case GetMemberDetail() when getMemberDetail != null:
return getMemberDetail(_that.memberId,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class GetMemberDetail implements MemberDetailEvent {
  const GetMemberDetail({required this.memberId, required this.token});
  

@override final  int memberId;
@override final  String token;

/// Create a copy of MemberDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMemberDetailCopyWith<GetMemberDetail> get copyWith => _$GetMemberDetailCopyWithImpl<GetMemberDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMemberDetail&&(identical(other.memberId, memberId) || other.memberId == memberId)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,memberId,token);

@override
String toString() {
  return 'MemberDetailEvent.getMemberDetail(memberId: $memberId, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetMemberDetailCopyWith<$Res> implements $MemberDetailEventCopyWith<$Res> {
  factory $GetMemberDetailCopyWith(GetMemberDetail value, $Res Function(GetMemberDetail) _then) = _$GetMemberDetailCopyWithImpl;
@override @useResult
$Res call({
 int memberId, String token
});




}
/// @nodoc
class _$GetMemberDetailCopyWithImpl<$Res>
    implements $GetMemberDetailCopyWith<$Res> {
  _$GetMemberDetailCopyWithImpl(this._self, this._then);

  final GetMemberDetail _self;
  final $Res Function(GetMemberDetail) _then;

/// Create a copy of MemberDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? memberId = null,Object? token = null,}) {
  return _then(GetMemberDetail(
memberId: null == memberId ? _self.memberId : memberId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MemberDetailState {

 bool get isFetching; bool get isFetchingFailed; bool get isFetchingSuccess; ErrorModel get error;
/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDetailStateCopyWith<MemberDetailState> get copyWith => _$MemberDetailStateCopyWithImpl<MemberDetailState>(this as MemberDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDetailState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingFailed,isFetchingSuccess,error);

@override
String toString() {
  return 'MemberDetailState(isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class $MemberDetailStateCopyWith<$Res>  {
  factory $MemberDetailStateCopyWith(MemberDetailState value, $Res Function(MemberDetailState) _then) = _$MemberDetailStateCopyWithImpl;
@useResult
$Res call({
 bool isFetching, bool isFetchingFailed, bool isFetchingSuccess, ErrorModel error
});


$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$MemberDetailStateCopyWithImpl<$Res>
    implements $MemberDetailStateCopyWith<$Res> {
  _$MemberDetailStateCopyWithImpl(this._self, this._then);

  final MemberDetailState _self;
  final $Res Function(MemberDetailState) _then;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFetching = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? error = null,}) {
  return _then(_self.copyWith(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}
/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberDetailState].
extension MemberDetailStatePatterns on MemberDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MemberDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MemberDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberDetailState() when $default != null:
return $default(_that.isFetching,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFetching,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error)  $default,) {final _that = this;
switch (_that) {
case _MemberDetailState():
return $default(_that.isFetching,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFetching,  bool isFetchingFailed,  bool isFetchingSuccess,  ErrorModel error)?  $default,) {final _that = this;
switch (_that) {
case _MemberDetailState() when $default != null:
return $default(_that.isFetching,_that.isFetchingFailed,_that.isFetchingSuccess,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MemberDetailState implements MemberDetailState {
  const _MemberDetailState({required this.isFetching, required this.isFetchingFailed, required this.isFetchingSuccess, required this.error});
  

@override final  bool isFetching;
@override final  bool isFetchingFailed;
@override final  bool isFetchingSuccess;
@override final  ErrorModel error;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberDetailStateCopyWith<_MemberDetailState> get copyWith => __$MemberDetailStateCopyWithImpl<_MemberDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberDetailState&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.isFetchingFailed, isFetchingFailed) || other.isFetchingFailed == isFetchingFailed)&&(identical(other.isFetchingSuccess, isFetchingSuccess) || other.isFetchingSuccess == isFetchingSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isFetching,isFetchingFailed,isFetchingSuccess,error);

@override
String toString() {
  return 'MemberDetailState(isFetching: $isFetching, isFetchingFailed: $isFetchingFailed, isFetchingSuccess: $isFetchingSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MemberDetailStateCopyWith<$Res> implements $MemberDetailStateCopyWith<$Res> {
  factory _$MemberDetailStateCopyWith(_MemberDetailState value, $Res Function(_MemberDetailState) _then) = __$MemberDetailStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFetching, bool isFetchingFailed, bool isFetchingSuccess, ErrorModel error
});


@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$MemberDetailStateCopyWithImpl<$Res>
    implements _$MemberDetailStateCopyWith<$Res> {
  __$MemberDetailStateCopyWithImpl(this._self, this._then);

  final _MemberDetailState _self;
  final $Res Function(_MemberDetailState) _then;

/// Create a copy of MemberDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFetching = null,Object? isFetchingFailed = null,Object? isFetchingSuccess = null,Object? error = null,}) {
  return _then(_MemberDetailState(
isFetching: null == isFetching ? _self.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,isFetchingFailed: null == isFetchingFailed ? _self.isFetchingFailed : isFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isFetchingSuccess: null == isFetchingSuccess ? _self.isFetchingSuccess : isFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}

/// Create a copy of MemberDetailState
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
