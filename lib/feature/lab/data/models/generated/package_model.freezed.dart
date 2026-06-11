// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageModel {

 int get id;@JsonKey(name: 'pkg_name') String get pkgName;@JsonKey(name: 'pkg_price') double get pkgPrice;@JsonKey(name: 'pkg_img') String get pkgImage;
/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageModelCopyWith<PackageModel> get copyWith => _$PackageModelCopyWithImpl<PackageModel>(this as PackageModel, _$identity);

  /// Serializes this PackageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.pkgPrice, pkgPrice) || other.pkgPrice == pkgPrice)&&(identical(other.pkgImage, pkgImage) || other.pkgImage == pkgImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pkgName,pkgPrice,pkgImage);

@override
String toString() {
  return 'PackageModel(id: $id, pkgName: $pkgName, pkgPrice: $pkgPrice, pkgImage: $pkgImage)';
}


}

/// @nodoc
abstract mixin class $PackageModelCopyWith<$Res>  {
  factory $PackageModelCopyWith(PackageModel value, $Res Function(PackageModel) _then) = _$PackageModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'pkg_name') String pkgName,@JsonKey(name: 'pkg_price') double pkgPrice,@JsonKey(name: 'pkg_img') String pkgImage
});




}
/// @nodoc
class _$PackageModelCopyWithImpl<$Res>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._self, this._then);

  final PackageModel _self;
  final $Res Function(PackageModel) _then;

/// Create a copy of PackageModel
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


/// Adds pattern-matching-related methods to [PackageModel].
extension PackageModelPatterns on PackageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageModel value)  $default,){
final _that = this;
switch (_that) {
case _PackageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageModel value)?  $default,){
final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'pkg_name')  String pkgName, @JsonKey(name: 'pkg_price')  double pkgPrice, @JsonKey(name: 'pkg_img')  String pkgImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'pkg_name')  String pkgName, @JsonKey(name: 'pkg_price')  double pkgPrice, @JsonKey(name: 'pkg_img')  String pkgImage)  $default,) {final _that = this;
switch (_that) {
case _PackageModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'pkg_name')  String pkgName, @JsonKey(name: 'pkg_price')  double pkgPrice, @JsonKey(name: 'pkg_img')  String pkgImage)?  $default,) {final _that = this;
switch (_that) {
case _PackageModel() when $default != null:
return $default(_that.id,_that.pkgName,_that.pkgPrice,_that.pkgImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageModel extends PackageModel {
  const _PackageModel({required this.id, @JsonKey(name: 'pkg_name') required this.pkgName, @JsonKey(name: 'pkg_price') required this.pkgPrice, @JsonKey(name: 'pkg_img') required this.pkgImage}): super._();
  factory _PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'pkg_name') final  String pkgName;
@override@JsonKey(name: 'pkg_price') final  double pkgPrice;
@override@JsonKey(name: 'pkg_img') final  String pkgImage;

/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageModelCopyWith<_PackageModel> get copyWith => __$PackageModelCopyWithImpl<_PackageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pkgName, pkgName) || other.pkgName == pkgName)&&(identical(other.pkgPrice, pkgPrice) || other.pkgPrice == pkgPrice)&&(identical(other.pkgImage, pkgImage) || other.pkgImage == pkgImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pkgName,pkgPrice,pkgImage);

@override
String toString() {
  return 'PackageModel(id: $id, pkgName: $pkgName, pkgPrice: $pkgPrice, pkgImage: $pkgImage)';
}


}

/// @nodoc
abstract mixin class _$PackageModelCopyWith<$Res> implements $PackageModelCopyWith<$Res> {
  factory _$PackageModelCopyWith(_PackageModel value, $Res Function(_PackageModel) _then) = __$PackageModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'pkg_name') String pkgName,@JsonKey(name: 'pkg_price') double pkgPrice,@JsonKey(name: 'pkg_img') String pkgImage
});




}
/// @nodoc
class __$PackageModelCopyWithImpl<$Res>
    implements _$PackageModelCopyWith<$Res> {
  __$PackageModelCopyWithImpl(this._self, this._then);

  final _PackageModel _self;
  final $Res Function(_PackageModel) _then;

/// Create a copy of PackageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pkgName = null,Object? pkgPrice = null,Object? pkgImage = null,}) {
  return _then(_PackageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,pkgName: null == pkgName ? _self.pkgName : pkgName // ignore: cast_nullable_to_non_nullable
as String,pkgPrice: null == pkgPrice ? _self.pkgPrice : pkgPrice // ignore: cast_nullable_to_non_nullable
as double,pkgImage: null == pkgImage ? _self.pkgImage : pkgImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
