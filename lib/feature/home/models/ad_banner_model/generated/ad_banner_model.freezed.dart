// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../ad_banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdBannerModel {

@JsonKey(name: 'Image_nm') String? get imageName;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'id_primary') int get idPrimary;@JsonKey(name: 'banner_type') String get bannerType;
/// Create a copy of AdBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdBannerModelCopyWith<AdBannerModel> get copyWith => _$AdBannerModelCopyWithImpl<AdBannerModel>(this as AdBannerModel, _$identity);

  /// Serializes this AdBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdBannerModel&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.url, url) || other.url == url)&&(identical(other.idPrimary, idPrimary) || other.idPrimary == idPrimary)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageName,url,idPrimary,bannerType);

@override
String toString() {
  return 'AdBannerModel(imageName: $imageName, url: $url, idPrimary: $idPrimary, bannerType: $bannerType)';
}


}

/// @nodoc
abstract mixin class $AdBannerModelCopyWith<$Res>  {
  factory $AdBannerModelCopyWith(AdBannerModel value, $Res Function(AdBannerModel) _then) = _$AdBannerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Image_nm') String? imageName,@JsonKey(name: 'url') String? url,@JsonKey(name: 'id_primary') int idPrimary,@JsonKey(name: 'banner_type') String bannerType
});




}
/// @nodoc
class _$AdBannerModelCopyWithImpl<$Res>
    implements $AdBannerModelCopyWith<$Res> {
  _$AdBannerModelCopyWithImpl(this._self, this._then);

  final AdBannerModel _self;
  final $Res Function(AdBannerModel) _then;

/// Create a copy of AdBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageName = freezed,Object? url = freezed,Object? idPrimary = null,Object? bannerType = null,}) {
  return _then(_self.copyWith(
imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,idPrimary: null == idPrimary ? _self.idPrimary : idPrimary // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdBannerModel].
extension AdBannerModelPatterns on AdBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _AdBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Image_nm')  String? imageName, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'id_primary')  int idPrimary, @JsonKey(name: 'banner_type')  String bannerType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdBannerModel() when $default != null:
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Image_nm')  String? imageName, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'id_primary')  int idPrimary, @JsonKey(name: 'banner_type')  String bannerType)  $default,) {final _that = this;
switch (_that) {
case _AdBannerModel():
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Image_nm')  String? imageName, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'id_primary')  int idPrimary, @JsonKey(name: 'banner_type')  String bannerType)?  $default,) {final _that = this;
switch (_that) {
case _AdBannerModel() when $default != null:
return $default(_that.imageName,_that.url,_that.idPrimary,_that.bannerType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdBannerModel implements AdBannerModel {
  const _AdBannerModel({@JsonKey(name: 'Image_nm') required this.imageName, @JsonKey(name: 'url') required this.url, @JsonKey(name: 'id_primary') required this.idPrimary, @JsonKey(name: 'banner_type') required this.bannerType});
  factory _AdBannerModel.fromJson(Map<String, dynamic> json) => _$AdBannerModelFromJson(json);

@override@JsonKey(name: 'Image_nm') final  String? imageName;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'id_primary') final  int idPrimary;
@override@JsonKey(name: 'banner_type') final  String bannerType;

/// Create a copy of AdBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdBannerModelCopyWith<_AdBannerModel> get copyWith => __$AdBannerModelCopyWithImpl<_AdBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdBannerModel&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.url, url) || other.url == url)&&(identical(other.idPrimary, idPrimary) || other.idPrimary == idPrimary)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageName,url,idPrimary,bannerType);

@override
String toString() {
  return 'AdBannerModel(imageName: $imageName, url: $url, idPrimary: $idPrimary, bannerType: $bannerType)';
}


}

/// @nodoc
abstract mixin class _$AdBannerModelCopyWith<$Res> implements $AdBannerModelCopyWith<$Res> {
  factory _$AdBannerModelCopyWith(_AdBannerModel value, $Res Function(_AdBannerModel) _then) = __$AdBannerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Image_nm') String? imageName,@JsonKey(name: 'url') String? url,@JsonKey(name: 'id_primary') int idPrimary,@JsonKey(name: 'banner_type') String bannerType
});




}
/// @nodoc
class __$AdBannerModelCopyWithImpl<$Res>
    implements _$AdBannerModelCopyWith<$Res> {
  __$AdBannerModelCopyWithImpl(this._self, this._then);

  final _AdBannerModel _self;
  final $Res Function(_AdBannerModel) _then;

/// Create a copy of AdBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageName = freezed,Object? url = freezed,Object? idPrimary = null,Object? bannerType = null,}) {
  return _then(_AdBannerModel(
imageName: freezed == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,idPrimary: null == idPrimary ? _self.idPrimary : idPrimary // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
