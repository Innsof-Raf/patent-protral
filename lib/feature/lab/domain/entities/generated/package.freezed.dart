// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Package {

 int get id; String get pkgName; double get pkgPrice; String get pkgImage;
/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageCopyWith<Package> get copyWith => _$PackageCopyWithImpl<Package>(this as Package, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Package&&(identical(other.id, id) || other.id == id)&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.pkgPrice, pkgPrice) || other.pkgPrice == pkgPrice)&&(identical(other.pkgImage, pkgImage) || other.pkgImage == pkgImage));
}


@override
int get hashCode => Object.hash(runtimeType,id,pkgName,pkgPrice,pkgImage);

@override
String toString() {
  return 'Package(id: $id, pkgName: $pkgName, pkgPrice: $pkgPrice, pkgImage: $pkgImage)';
}


}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res>  {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) = _$PackageCopyWithImpl;
@useResult
$Res call({
 int id, String pkgName, double pkgPrice, String pkgImage
});




}
/// @nodoc
class _$PackageCopyWithImpl<$Res>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pkgName = null,Object? pkgPrice = null,Object? pkgImage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,pkgPrice: null == pkgPrice ? _self.pkgPrice : pkgPrice // ignore: cast_nullable_to_non_nullable
as double,pkgImage: null == pkgImage ? _self.pkgImage : pkgImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Package value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Package() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Package value)  $default,){
final _that = this;
switch (_that) {
case _Package():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Package value)?  $default,){
final _that = this;
switch (_that) {
case _Package() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String pkgName,  double pkgPrice,  String pkgImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.id,_that.pkgName,_that.pkgPrice,_that.pkgImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String pkgName,  double pkgPrice,  String pkgImage)  $default,) {final _that = this;
switch (_that) {
case _Package():
return $default(_that.id,_that.pkgName,_that.pkgPrice,_that.pkgImage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String pkgName,  double pkgPrice,  String pkgImage)?  $default,) {final _that = this;
switch (_that) {
case _Package() when $default != null:
return $default(_that.id,_that.pkgName,_that.pkgPrice,_that.pkgImage);case _:
  return null;

}
}

}

/// @nodoc


class _Package implements Package {
  const _Package({required this.id, required this.pkgName, required this.pkgPrice, required this.pkgImage});
  

@override final  int id;
@override final  String pkgName;
@override final  double pkgPrice;
@override final  String pkgImage;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageCopyWith<_Package> get copyWith => __$PackageCopyWithImpl<_Package>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Package&&(identical(other.id, id) || other.id == id)&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.pkgPrice, pkgPrice) || other.pkgPrice == pkgPrice)&&(identical(other.pkgImage, pkgImage) || other.pkgImage == pkgImage));
}


@override
int get hashCode => Object.hash(runtimeType,id,pkgName,pkgPrice,pkgImage);

@override
String toString() {
  return 'Package(id: $id, pkgName: $pkgName, pkgPrice: $pkgPrice, pkgImage: $pkgImage)';
}


}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) = __$PackageCopyWithImpl;
@override @useResult
$Res call({
 int id, String pkgName, double pkgPrice, String pkgImage
});




}
/// @nodoc
class __$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pkgName = null,Object? pkgPrice = null,Object? pkgImage = null,}) {
  return _then(_Package(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,pkgPrice: null == pkgPrice ? _self.pkgPrice : pkgPrice // ignore: cast_nullable_to_non_nullable
as double,pkgImage: null == pkgImage ? _self.pkgImage : pkgImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
