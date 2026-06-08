// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDataModel {

@JsonKey(name: 'ad_banner') List<AdBannerModel> get ads;@JsonKey(name: 'speciality') List<SpecialityModel> get topSpecialities;@JsonKey(name: 'insurance') List<InsuranceModel> get topInsurances;@JsonKey(name: 'package_banner') List<AdBannerModel> get topPackages;@JsonKey(name: 'notification_count') int get notificationCount;
/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDataModelCopyWith<HomeDataModel> get copyWith => _$HomeDataModelCopyWithImpl<HomeDataModel>(this as HomeDataModel, _$identity);

  /// Serializes this HomeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeDataModel&&const DeepCollectionEquality().equals(other.ads, ads)&&const DeepCollectionEquality().equals(other.topSpecialities, topSpecialities)&&const DeepCollectionEquality().equals(other.topInsurances, topInsurances)&&const DeepCollectionEquality().equals(other.topPackages, topPackages)&&(identical(other.notificationCount, notificationCount) || other.notificationCount == notificationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ads),const DeepCollectionEquality().hash(topSpecialities),const DeepCollectionEquality().hash(topInsurances),const DeepCollectionEquality().hash(topPackages),notificationCount);

@override
String toString() {
  return 'HomeDataModel(ads: $ads, topSpecialities: $topSpecialities, topInsurances: $topInsurances, topPackages: $topPackages, notificationCount: $notificationCount)';
}


}

/// @nodoc
abstract mixin class $HomeDataModelCopyWith<$Res>  {
  factory $HomeDataModelCopyWith(HomeDataModel value, $Res Function(HomeDataModel) _then) = _$HomeDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ad_banner') List<AdBannerModel> ads,@JsonKey(name: 'speciality') List<SpecialityModel> topSpecialities,@JsonKey(name: 'insurance') List<InsuranceModel> topInsurances,@JsonKey(name: 'package_banner') List<AdBannerModel> topPackages,@JsonKey(name: 'notification_count') int notificationCount
});




}
/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._self, this._then);

  final HomeDataModel _self;
  final $Res Function(HomeDataModel) _then;

/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ads = null,Object? topSpecialities = null,Object? topInsurances = null,Object? topPackages = null,Object? notificationCount = null,}) {
  return _then(_self.copyWith(
ads: null == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as List<AdBannerModel>,topSpecialities: null == topSpecialities ? _self.topSpecialities : topSpecialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,topInsurances: null == topInsurances ? _self.topInsurances : topInsurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,topPackages: null == topPackages ? _self.topPackages : topPackages // ignore: cast_nullable_to_non_nullable
as List<AdBannerModel>,notificationCount: null == notificationCount ? _self.notificationCount : notificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeDataModel].
extension HomeDataModelPatterns on HomeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ad_banner')  List<AdBannerModel> ads, @JsonKey(name: 'speciality')  List<SpecialityModel> topSpecialities, @JsonKey(name: 'insurance')  List<InsuranceModel> topInsurances, @JsonKey(name: 'package_banner')  List<AdBannerModel> topPackages, @JsonKey(name: 'notification_count')  int notificationCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.notificationCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ad_banner')  List<AdBannerModel> ads, @JsonKey(name: 'speciality')  List<SpecialityModel> topSpecialities, @JsonKey(name: 'insurance')  List<InsuranceModel> topInsurances, @JsonKey(name: 'package_banner')  List<AdBannerModel> topPackages, @JsonKey(name: 'notification_count')  int notificationCount)  $default,) {final _that = this;
switch (_that) {
case _HomeDataModel():
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.notificationCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ad_banner')  List<AdBannerModel> ads, @JsonKey(name: 'speciality')  List<SpecialityModel> topSpecialities, @JsonKey(name: 'insurance')  List<InsuranceModel> topInsurances, @JsonKey(name: 'package_banner')  List<AdBannerModel> topPackages, @JsonKey(name: 'notification_count')  int notificationCount)?  $default,) {final _that = this;
switch (_that) {
case _HomeDataModel() when $default != null:
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.notificationCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeDataModel implements HomeDataModel {
  const _HomeDataModel({@JsonKey(name: 'ad_banner') required final  List<AdBannerModel> ads, @JsonKey(name: 'speciality') required final  List<SpecialityModel> topSpecialities, @JsonKey(name: 'insurance') required final  List<InsuranceModel> topInsurances, @JsonKey(name: 'package_banner') required final  List<AdBannerModel> topPackages, @JsonKey(name: 'notification_count') required this.notificationCount}): _ads = ads,_topSpecialities = topSpecialities,_topInsurances = topInsurances,_topPackages = topPackages;
  factory _HomeDataModel.fromJson(Map<String, dynamic> json) => _$HomeDataModelFromJson(json);

 final  List<AdBannerModel> _ads;
@override@JsonKey(name: 'ad_banner') List<AdBannerModel> get ads {
  if (_ads is EqualUnmodifiableListView) return _ads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ads);
}

 final  List<SpecialityModel> _topSpecialities;
@override@JsonKey(name: 'speciality') List<SpecialityModel> get topSpecialities {
  if (_topSpecialities is EqualUnmodifiableListView) return _topSpecialities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topSpecialities);
}

 final  List<InsuranceModel> _topInsurances;
@override@JsonKey(name: 'insurance') List<InsuranceModel> get topInsurances {
  if (_topInsurances is EqualUnmodifiableListView) return _topInsurances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topInsurances);
}

 final  List<AdBannerModel> _topPackages;
@override@JsonKey(name: 'package_banner') List<AdBannerModel> get topPackages {
  if (_topPackages is EqualUnmodifiableListView) return _topPackages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topPackages);
}

@override@JsonKey(name: 'notification_count') final  int notificationCount;

/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDataModelCopyWith<_HomeDataModel> get copyWith => __$HomeDataModelCopyWithImpl<_HomeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeDataModel&&const DeepCollectionEquality().equals(other._ads, _ads)&&const DeepCollectionEquality().equals(other._topSpecialities, _topSpecialities)&&const DeepCollectionEquality().equals(other._topInsurances, _topInsurances)&&const DeepCollectionEquality().equals(other._topPackages, _topPackages)&&(identical(other.notificationCount, notificationCount) || other.notificationCount == notificationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ads),const DeepCollectionEquality().hash(_topSpecialities),const DeepCollectionEquality().hash(_topInsurances),const DeepCollectionEquality().hash(_topPackages),notificationCount);

@override
String toString() {
  return 'HomeDataModel(ads: $ads, topSpecialities: $topSpecialities, topInsurances: $topInsurances, topPackages: $topPackages, notificationCount: $notificationCount)';
}


}

/// @nodoc
abstract mixin class _$HomeDataModelCopyWith<$Res> implements $HomeDataModelCopyWith<$Res> {
  factory _$HomeDataModelCopyWith(_HomeDataModel value, $Res Function(_HomeDataModel) _then) = __$HomeDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ad_banner') List<AdBannerModel> ads,@JsonKey(name: 'speciality') List<SpecialityModel> topSpecialities,@JsonKey(name: 'insurance') List<InsuranceModel> topInsurances,@JsonKey(name: 'package_banner') List<AdBannerModel> topPackages,@JsonKey(name: 'notification_count') int notificationCount
});




}
/// @nodoc
class __$HomeDataModelCopyWithImpl<$Res>
    implements _$HomeDataModelCopyWith<$Res> {
  __$HomeDataModelCopyWithImpl(this._self, this._then);

  final _HomeDataModel _self;
  final $Res Function(_HomeDataModel) _then;

/// Create a copy of HomeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ads = null,Object? topSpecialities = null,Object? topInsurances = null,Object? topPackages = null,Object? notificationCount = null,}) {
  return _then(_HomeDataModel(
ads: null == ads ? _self._ads : ads // ignore: cast_nullable_to_non_nullable
as List<AdBannerModel>,topSpecialities: null == topSpecialities ? _self._topSpecialities : topSpecialities // ignore: cast_nullable_to_non_nullable
as List<SpecialityModel>,topInsurances: null == topInsurances ? _self._topInsurances : topInsurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,topPackages: null == topPackages ? _self._topPackages : topPackages // ignore: cast_nullable_to_non_nullable
as List<AdBannerModel>,notificationCount: null == notificationCount ? _self.notificationCount : notificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
