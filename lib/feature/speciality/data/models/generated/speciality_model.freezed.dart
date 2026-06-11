// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../speciality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecialityModel {

 int get idSpeciality; String get specialityId; String get specialityName; String? get specialityImage;
/// Create a copy of SpecialityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityModelCopyWith<SpecialityModel> get copyWith => _$SpecialityModelCopyWithImpl<SpecialityModel>(this as SpecialityModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityModel&&(identical(other.idSpeciality, idSpeciality) || other.idSpeciality == idSpeciality)&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.specialityName, specialityName) || other.specialityName == specialityName)&&(identical(other.specialityImage, specialityImage) || other.specialityImage == specialityImage));
}


@override
int get hashCode => Object.hash(runtimeType,idSpeciality,specialityId,specialityName,specialityImage);

@override
String toString() {
  return 'SpecialityModel(idSpeciality: $idSpeciality, specialityId: $specialityId, specialityName: $specialityName, specialityImage: $specialityImage)';
}


}

/// @nodoc
abstract mixin class $SpecialityModelCopyWith<$Res>  {
  factory $SpecialityModelCopyWith(SpecialityModel value, $Res Function(SpecialityModel) _then) = _$SpecialityModelCopyWithImpl;
@useResult
$Res call({
 int idSpeciality, String specialityId, String specialityName, String? specialityImage
});




}
/// @nodoc
class _$SpecialityModelCopyWithImpl<$Res>
    implements $SpecialityModelCopyWith<$Res> {
  _$SpecialityModelCopyWithImpl(this._self, this._then);

  final SpecialityModel _self;
  final $Res Function(SpecialityModel) _then;

/// Create a copy of SpecialityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idSpeciality = null,Object? specialityId = null,Object? specialityName = null,Object? specialityImage = freezed,}) {
  return _then(_self.copyWith(
idSpeciality: null == idSpeciality ? _self.idSpeciality : idSpeciality // ignore: cast_nullable_to_non_nullable
as int,specialityId: null == specialityId ? _self.specialityId : specialityId // ignore: cast_nullable_to_non_nullable
as String,specialityName: null == specialityName ? _self.specialityName : specialityName // ignore: cast_nullable_to_non_nullable
as String,specialityImage: freezed == specialityImage ? _self.specialityImage : specialityImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecialityModel].
extension SpecialityModelPatterns on SpecialityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecialityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecialityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecialityModel value)  $default,){
final _that = this;
switch (_that) {
case _SpecialityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecialityModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpecialityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idSpeciality,  String specialityId,  String specialityName,  String? specialityImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecialityModel() when $default != null:
return $default(_that.idSpeciality,_that.specialityId,_that.specialityName,_that.specialityImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idSpeciality,  String specialityId,  String specialityName,  String? specialityImage)  $default,) {final _that = this;
switch (_that) {
case _SpecialityModel():
return $default(_that.idSpeciality,_that.specialityId,_that.specialityName,_that.specialityImage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idSpeciality,  String specialityId,  String specialityName,  String? specialityImage)?  $default,) {final _that = this;
switch (_that) {
case _SpecialityModel() when $default != null:
return $default(_that.idSpeciality,_that.specialityId,_that.specialityName,_that.specialityImage);case _:
  return null;

}
}

}

/// @nodoc


class _SpecialityModel extends SpecialityModel {
  const _SpecialityModel({required this.idSpeciality, required this.specialityId, required this.specialityName, required this.specialityImage}): super._();
  

@override final  int idSpeciality;
@override final  String specialityId;
@override final  String specialityName;
@override final  String? specialityImage;

/// Create a copy of SpecialityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecialityModelCopyWith<_SpecialityModel> get copyWith => __$SpecialityModelCopyWithImpl<_SpecialityModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecialityModel&&(identical(other.idSpeciality, idSpeciality) || other.idSpeciality == idSpeciality)&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.specialityName, specialityName) || other.specialityName == specialityName)&&(identical(other.specialityImage, specialityImage) || other.specialityImage == specialityImage));
}


@override
int get hashCode => Object.hash(runtimeType,idSpeciality,specialityId,specialityName,specialityImage);

@override
String toString() {
  return 'SpecialityModel(idSpeciality: $idSpeciality, specialityId: $specialityId, specialityName: $specialityName, specialityImage: $specialityImage)';
}


}

/// @nodoc
abstract mixin class _$SpecialityModelCopyWith<$Res> implements $SpecialityModelCopyWith<$Res> {
  factory _$SpecialityModelCopyWith(_SpecialityModel value, $Res Function(_SpecialityModel) _then) = __$SpecialityModelCopyWithImpl;
@override @useResult
$Res call({
 int idSpeciality, String specialityId, String specialityName, String? specialityImage
});




}
/// @nodoc
class __$SpecialityModelCopyWithImpl<$Res>
    implements _$SpecialityModelCopyWith<$Res> {
  __$SpecialityModelCopyWithImpl(this._self, this._then);

  final _SpecialityModel _self;
  final $Res Function(_SpecialityModel) _then;

/// Create a copy of SpecialityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSpeciality = null,Object? specialityId = null,Object? specialityName = null,Object? specialityImage = freezed,}) {
  return _then(_SpecialityModel(
idSpeciality: null == idSpeciality ? _self.idSpeciality : idSpeciality // ignore: cast_nullable_to_non_nullable
as int,specialityId: null == specialityId ? _self.specialityId : specialityId // ignore: cast_nullable_to_non_nullable
as String,specialityName: null == specialityName ? _self.specialityName : specialityName // ignore: cast_nullable_to_non_nullable
as String,specialityImage: freezed == specialityImage ? _self.specialityImage : specialityImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
