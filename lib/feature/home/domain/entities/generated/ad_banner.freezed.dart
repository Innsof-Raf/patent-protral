// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../ad_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdBanner {

 String? get imageName; String? get url; int get idPrimary; String get bannerType; String? get description;
/// Create a copy of AdBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdBannerCopyWith<AdBanner> get copyWith => _$AdBannerCopyWithImpl<AdBanner>(this as AdBanner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdBanner&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.url, url) || other.url == url)&&(identical(other.idPrimary, idPrimary) || other.idPrimary == idPrimary)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,imageName,url,idPrimary,bannerType,description);

@override
String toString() {
  return 'AdBanner(imageName: $imageName, url: $url, idPrimary: $idPrimary, bannerType: $bannerType, description: $description)';
}


}

/// @nodoc
abstract mixin class $AdBannerCopyWith<$Res>  {
  factory $AdBannerCopyWith(AdBanner value, $Res Function(AdBanner) _then) = _$AdBannerCopyWithImpl;
@useResult
$Res call({
 String? imageName, String? url, int idPrimary, String bannerType, String? description
});




}
/// @nodoc
class _$AdBannerCopyWithImpl<$Res>
    implements $AdBannerCopyWith<$Res> {
  _$AdBannerCopyWithImpl(this._self, this._then);

  final AdBanner _self;
  final $Res Function(AdBanner) _then;

/// Create a copy of AdBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageName = freezed,Object? url = freezed,Object? idPrimary = null,Object? bannerType = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,idPrimary: null == idPrimary ? _self.idPrimary : idPrimary // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdBanner].
extension AdBannerPatterns on AdBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdBanner value)  $default,){
final _that = this;
switch (_that) {
case _AdBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdBanner value)?  $default,){
final _that = this;
switch (_that) {
case _AdBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imageName,  String? url,  int idPrimary,  String bannerType,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdBanner() when $default != null:
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imageName,  String? url,  int idPrimary,  String bannerType,  String? description)  $default,) {final _that = this;
switch (_that) {
case _AdBanner():
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imageName,  String? url,  int idPrimary,  String bannerType,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _AdBanner() when $default != null:
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _AdBanner implements AdBanner {
  const _AdBanner({required this.imageName, required this.url, required this.idPrimary, required this.bannerType, this.description});
  

@override final  String? imageName;
@override final  String? url;
@override final  int idPrimary;
@override final  String bannerType;
@override final  String? description;

/// Create a copy of AdBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdBannerCopyWith<_AdBanner> get copyWith => __$AdBannerCopyWithImpl<_AdBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdBanner&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.url, url) || other.url == url)&&(identical(other.idPrimary, idPrimary) || other.idPrimary == idPrimary)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,imageName,url,idPrimary,bannerType,description);

@override
String toString() {
  return 'AdBanner(imageName: $imageName, url: $url, idPrimary: $idPrimary, bannerType: $bannerType, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AdBannerCopyWith<$Res> implements $AdBannerCopyWith<$Res> {
  factory _$AdBannerCopyWith(_AdBanner value, $Res Function(_AdBanner) _then) = __$AdBannerCopyWithImpl;
@override @useResult
$Res call({
 String? imageName, String? url, int idPrimary, String bannerType, String? description
});




}
/// @nodoc
class __$AdBannerCopyWithImpl<$Res>
    implements _$AdBannerCopyWith<$Res> {
  __$AdBannerCopyWithImpl(this._self, this._then);

  final _AdBanner _self;
  final $Res Function(_AdBanner) _then;

/// Create a copy of AdBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageName = freezed,Object? url = freezed,Object? idPrimary = null,Object? bannerType = null,Object? description = freezed,}) {
  return _then(_AdBanner(
imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,idPrimary: null == idPrimary ? _self.idPrimary : idPrimary // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
