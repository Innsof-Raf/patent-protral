// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../change_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordResponseModel {

 bool get status;
/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordResponseModelCopyWith<ChangePasswordResponseModel> get copyWith => _$ChangePasswordResponseModelCopyWithImpl<ChangePasswordResponseModel>(this as ChangePasswordResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordResponseModel&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'ChangePasswordResponseModel(status: $status)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordResponseModelCopyWith<$Res>  {
  factory $ChangePasswordResponseModelCopyWith(ChangePasswordResponseModel value, $Res Function(ChangePasswordResponseModel) _then) = _$ChangePasswordResponseModelCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class _$ChangePasswordResponseModelCopyWithImpl<$Res>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  _$ChangePasswordResponseModelCopyWithImpl(this._self, this._then);

  final ChangePasswordResponseModel _self;
  final $Res Function(ChangePasswordResponseModel) _then;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordResponseModel].
extension ChangePasswordResponseModelPatterns on ChangePasswordResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel():
return $default(_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordResponseModel extends ChangePasswordResponseModel {
  const _ChangePasswordResponseModel({required this.status}): super._();
  

@override final  bool status;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordResponseModelCopyWith<_ChangePasswordResponseModel> get copyWith => __$ChangePasswordResponseModelCopyWithImpl<_ChangePasswordResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordResponseModel&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'ChangePasswordResponseModel(status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordResponseModelCopyWith<$Res> implements $ChangePasswordResponseModelCopyWith<$Res> {
  factory _$ChangePasswordResponseModelCopyWith(_ChangePasswordResponseModel value, $Res Function(_ChangePasswordResponseModel) _then) = __$ChangePasswordResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$ChangePasswordResponseModelCopyWithImpl<$Res>
    implements _$ChangePasswordResponseModelCopyWith<$Res> {
  __$ChangePasswordResponseModelCopyWithImpl(this._self, this._then);

  final _ChangePasswordResponseModel _self;
  final $Res Function(_ChangePasswordResponseModel) _then;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_ChangePasswordResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
