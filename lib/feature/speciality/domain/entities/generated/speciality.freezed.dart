// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../speciality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Speciality {

 int get idSpeciality; String get specialityId; String get specialityName; String? get specialityImage;
/// Create a copy of Speciality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityCopyWith<Speciality> get copyWith => _$SpecialityCopyWithImpl<Speciality>(this as Speciality, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Speciality&&(identical(other.idSpeciality, idSpeciality) || other.idSpeciality == idSpeciality)&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.specialityName, specialityName) || other.specialityName == specialityName)&&(identical(other.specialityImage, specialityImage) || other.specialityImage == specialityImage));
}


@override
int get hashCode => Object.hash(runtimeType,idSpeciality,specialityId,specialityName,specialityImage);

@override
String toString() {
  return 'Speciality(idSpeciality: $idSpeciality, specialityId: $specialityId, specialityName: $specialityName, specialityImage: $specialityImage)';
}


}

/// @nodoc
abstract mixin class $SpecialityCopyWith<$Res>  {
  factory $SpecialityCopyWith(Speciality value, $Res Function(Speciality) _then) = _$SpecialityCopyWithImpl;
@useResult
$Res call({
 int idSpeciality, String specialityId, String specialityName, String? specialityImage
});




}
/// @nodoc
class _$SpecialityCopyWithImpl<$Res>
    implements $SpecialityCopyWith<$Res> {
  _$SpecialityCopyWithImpl(this._self, this._then);

  final Speciality _self;
  final $Res Function(Speciality) _then;

/// Create a copy of Speciality
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


/// Adds pattern-matching-related methods to [Speciality].
extension SpecialityPatterns on Speciality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Speciality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Speciality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Speciality value)  $default,){
final _that = this;
switch (_that) {
case _Speciality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Speciality value)?  $default,){
final _that = this;
switch (_that) {
case _Speciality() when $default != null:
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
case _Speciality() when $default != null:
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
case _Speciality():
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
case _Speciality() when $default != null:
return $default(_that.idSpeciality,_that.specialityId,_that.specialityName,_that.specialityImage);case _:
  return null;

}
}

}

/// @nodoc


class _Speciality implements Speciality {
  const _Speciality({required this.idSpeciality, required this.specialityId, required this.specialityName, required this.specialityImage});
  

@override final  int idSpeciality;
@override final  String specialityId;
@override final  String specialityName;
@override final  String? specialityImage;

/// Create a copy of Speciality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecialityCopyWith<_Speciality> get copyWith => __$SpecialityCopyWithImpl<_Speciality>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Speciality&&(identical(other.idSpeciality, idSpeciality) || other.idSpeciality == idSpeciality)&&(identical(other.specialityId, specialityId) || other.specialityId == specialityId)&&(identical(other.specialityName, specialityName) || other.specialityName == specialityName)&&(identical(other.specialityImage, specialityImage) || other.specialityImage == specialityImage));
}


@override
int get hashCode => Object.hash(runtimeType,idSpeciality,specialityId,specialityName,specialityImage);

@override
String toString() {
  return 'Speciality(idSpeciality: $idSpeciality, specialityId: $specialityId, specialityName: $specialityName, specialityImage: $specialityImage)';
}


}

/// @nodoc
abstract mixin class _$SpecialityCopyWith<$Res> implements $SpecialityCopyWith<$Res> {
  factory _$SpecialityCopyWith(_Speciality value, $Res Function(_Speciality) _then) = __$SpecialityCopyWithImpl;
@override @useResult
$Res call({
 int idSpeciality, String specialityId, String specialityName, String? specialityImage
});




}
/// @nodoc
class __$SpecialityCopyWithImpl<$Res>
    implements _$SpecialityCopyWith<$Res> {
  __$SpecialityCopyWithImpl(this._self, this._then);

  final _Speciality _self;
  final $Res Function(_Speciality) _then;

/// Create a copy of Speciality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idSpeciality = null,Object? specialityId = null,Object? specialityName = null,Object? specialityImage = freezed,}) {
  return _then(_Speciality(
idSpeciality: null == idSpeciality ? _self.idSpeciality : idSpeciality // ignore: cast_nullable_to_non_nullable
as int,specialityId: null == specialityId ? _self.specialityId : specialityId // ignore: cast_nullable_to_non_nullable
as String,specialityName: null == specialityName ? _self.specialityName : specialityName // ignore: cast_nullable_to_non_nullable
as String,specialityImage: freezed == specialityImage ? _self.specialityImage : specialityImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
