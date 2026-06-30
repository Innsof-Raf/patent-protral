// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {

 String get token; String get mobileNumber;
/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEventCopyWith<NotificationEvent> get copyWith => _$NotificationEventCopyWithImpl<NotificationEvent>(this as NotificationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'NotificationEvent(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $NotificationEventCopyWith<$Res>  {
  factory $NotificationEventCopyWith(NotificationEvent value, $Res Function(NotificationEvent) _then) = _$NotificationEventCopyWithImpl;
@useResult
$Res call({
 String token, String mobileNumber
});




}
/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._self, this._then);

  final NotificationEvent _self;
  final $Res Function(NotificationEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetNotifications value)?  getNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetNotifications() when getNotifications != null:
return getNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetNotifications value)  getNotifications,}){
final _that = this;
switch (_that) {
case GetNotifications():
return getNotifications(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetNotifications value)?  getNotifications,}){
final _that = this;
switch (_that) {
case GetNotifications() when getNotifications != null:
return getNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token,  String mobileNumber)?  getNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetNotifications() when getNotifications != null:
return getNotifications(_that.token,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token,  String mobileNumber)  getNotifications,}) {final _that = this;
switch (_that) {
case GetNotifications():
return getNotifications(_that.token,_that.mobileNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token,  String mobileNumber)?  getNotifications,}) {final _that = this;
switch (_that) {
case GetNotifications() when getNotifications != null:
return getNotifications(_that.token,_that.mobileNumber);case _:
  return null;

}
}

}

/// @nodoc


class GetNotifications implements NotificationEvent {
  const GetNotifications({required this.token, required this.mobileNumber});
  

@override final  String token;
@override final  String mobileNumber;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationsCopyWith<GetNotifications> get copyWith => _$GetNotificationsCopyWithImpl<GetNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotifications&&(identical(other.token, token) || other.token == token)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,token,mobileNumber);

@override
String toString() {
  return 'NotificationEvent.getNotifications(token: $token, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $GetNotificationsCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationsCopyWith(GetNotifications value, $Res Function(GetNotifications) _then) = _$GetNotificationsCopyWithImpl;
@override @useResult
$Res call({
 String token, String mobileNumber
});




}
/// @nodoc
class _$GetNotificationsCopyWithImpl<$Res>
    implements $GetNotificationsCopyWith<$Res> {
  _$GetNotificationsCopyWithImpl(this._self, this._then);

  final GetNotifications _self;
  final $Res Function(GetNotifications) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? mobileNumber = null,}) {
  return _then(GetNotifications(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NotificationState {

 List<NotificationEntity> get notifications; bool get isLoading; bool get isError; bool get isSuccess; String get errorMessage;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStateCopyWith<NotificationState> get copyWith => _$NotificationStateCopyWithImpl<NotificationState>(this as NotificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState&&const DeepCollectionEquality().equals(other.notifications, notifications)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(notifications),isLoading,isError,isSuccess,errorMessage);

@override
String toString() {
  return 'NotificationState(notifications: $notifications, isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) _then) = _$NotificationStateCopyWithImpl;
@useResult
$Res call({
 List<NotificationEntity> notifications, bool isLoading, bool isError, bool isSuccess, String errorMessage
});




}
/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool isLoading,  bool isError,  bool isSuccess,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.notifications,_that.isLoading,_that.isError,_that.isSuccess,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool isLoading,  bool isError,  bool isSuccess,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _NotificationState():
return $default(_that.notifications,_that.isLoading,_that.isError,_that.isSuccess,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationEntity> notifications,  bool isLoading,  bool isError,  bool isSuccess,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.notifications,_that.isLoading,_that.isError,_that.isSuccess,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationState implements NotificationState {
  const _NotificationState({required final  List<NotificationEntity> notifications, required this.isLoading, required this.isError, required this.isSuccess, required this.errorMessage}): _notifications = notifications;
  

 final  List<NotificationEntity> _notifications;
@override List<NotificationEntity> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isSuccess;
@override final  String errorMessage;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStateCopyWith<_NotificationState> get copyWith => __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationState&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),isLoading,isError,isSuccess,errorMessage);

@override
String toString() {
  return 'NotificationState(notifications: $notifications, isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(_NotificationState value, $Res Function(_NotificationState) _then) = __$NotificationStateCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationEntity> notifications, bool isLoading, bool isError, bool isSuccess, String errorMessage
});




}
/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? errorMessage = null,}) {
  return _then(_NotificationState(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
