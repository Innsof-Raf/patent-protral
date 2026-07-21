// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../doctor_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DoctorParams _$DoctorParamsFromJson(
  Map<String, dynamic> json
) {
    return GetAvailableDoctorsParams.fromJson(
      json
    );
}

/// @nodoc
mixin _$DoctorParams {

@JsonKey(name: 'id_dept') int get specialityId;@JsonKey(includeToJson: false) String get token;
/// Create a copy of DoctorParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorParamsCopyWith<DoctorParams> get copyWith => _$DoctorParamsCopyWithImpl<DoctorParams>(this as DoctorParams, _$identity);

  /// Serializes this DoctorParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorParams&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,specialityId,token);

@override
String toString() {
  return 'DoctorParams(specialityId: $specialityId, token: $token)';
}


}

/// @nodoc
abstract mixin class $DoctorParamsCopyWith<$Res>  {
  factory $DoctorParamsCopyWith(DoctorParams value, $Res Function(DoctorParams) _then) = _$DoctorParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_dept') int specialityId,@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class _$DoctorParamsCopyWithImpl<$Res>
    implements $DoctorParamsCopyWith<$Res> {
  _$DoctorParamsCopyWithImpl(this._self, this._then);

  final DoctorParams _self;
  final $Res Function(DoctorParams) _then;

/// Create a copy of DoctorParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? specialityId = null,Object? token = null,}) {
  return _then(_self.copyWith(
specialityId: null == specialityId ? _self.specialityId : specialityId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DoctorParams].
extension DoctorParamsPatterns on DoctorParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetAvailableDoctorsParams value)?  getAvailableDoctors,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsParams() when getAvailableDoctors != null:
return getAvailableDoctors(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetAvailableDoctorsParams value)  getAvailableDoctors,}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsParams():
return getAvailableDoctors(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetAvailableDoctorsParams value)?  getAvailableDoctors,}){
final _that = this;
switch (_that) {
case GetAvailableDoctorsParams() when getAvailableDoctors != null:
return getAvailableDoctors(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function(@JsonKey(name: 'id_dept')  int specialityId, @JsonKey(includeToJson: false)  String token)?  getAvailableDoctors,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsParams() when getAvailableDoctors != null:
return getAvailableDoctors(_that.specialityId,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function(@JsonKey(name: 'id_dept')  int specialityId, @JsonKey(includeToJson: false)  String token)  getAvailableDoctors,}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsParams():
return getAvailableDoctors(_that.specialityId,_that.token);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function(@JsonKey(name: 'id_dept')  int specialityId, @JsonKey(includeToJson: false)  String token)?  getAvailableDoctors,}) {final _that = this;
switch (_that) {
case GetAvailableDoctorsParams() when getAvailableDoctors != null:
return getAvailableDoctors(_that.specialityId,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class GetAvailableDoctorsParams implements DoctorParams {
  const GetAvailableDoctorsParams({@JsonKey(name: 'id_dept') required this.specialityId, @JsonKey(includeToJson: false) required this.token});
  factory GetAvailableDoctorsParams.fromJson(Map<String, dynamic> json) => _$GetAvailableDoctorsParamsFromJson(json);

@override@JsonKey(name: 'id_dept') final  int specialityId;
@override@JsonKey(includeToJson: false) final  String token;

/// Create a copy of DoctorParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAvailableDoctorsParamsCopyWith<GetAvailableDoctorsParams> get copyWith => _$GetAvailableDoctorsParamsCopyWithImpl<GetAvailableDoctorsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAvailableDoctorsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAvailableDoctorsParams&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,specialityId,token);

@override
String toString() {
  return 'DoctorParams.getAvailableDoctors(specialityId: $specialityId, token: $token)';
}


}

/// @nodoc
abstract mixin class $GetAvailableDoctorsParamsCopyWith<$Res> implements $DoctorParamsCopyWith<$Res> {
  factory $GetAvailableDoctorsParamsCopyWith(GetAvailableDoctorsParams value, $Res Function(GetAvailableDoctorsParams) _then) = _$GetAvailableDoctorsParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_dept') int specialityId,@JsonKey(includeToJson: false) String token
});




}
/// @nodoc
class _$GetAvailableDoctorsParamsCopyWithImpl<$Res>
    implements $GetAvailableDoctorsParamsCopyWith<$Res> {
  _$GetAvailableDoctorsParamsCopyWithImpl(this._self, this._then);

  final GetAvailableDoctorsParams _self;
  final $Res Function(GetAvailableDoctorsParams) _then;

/// Create a copy of DoctorParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? specialityId = null,Object? token = null,}) {
  return _then(GetAvailableDoctorsParams(
specialityId: null == specialityId ? _self.specialityId : specialityId // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
