// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeData {

 List<AdBanner> get ads; List<Speciality> get topSpecialities; List<InsuranceModel> get topInsurances; List<AdBanner> get topPackages; List<Doctor> get topDoctors; int get notificationCount;
/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeDataCopyWith<HomeData> get copyWith => _$HomeDataCopyWithImpl<HomeData>(this as HomeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeData&&const DeepCollectionEquality().equals(other.ads, ads)&&const DeepCollectionEquality().equals(other.topSpecialities, topSpecialities)&&const DeepCollectionEquality().equals(other.topInsurances, topInsurances)&&const DeepCollectionEquality().equals(other.topPackages, topPackages)&&const DeepCollectionEquality().equals(other.topDoctors, topDoctors)&&(identical(other.notificationCount, notificationCount) || other.notificationCount == notificationCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ads),const DeepCollectionEquality().hash(topSpecialities),const DeepCollectionEquality().hash(topInsurances),const DeepCollectionEquality().hash(topPackages),const DeepCollectionEquality().hash(topDoctors),notificationCount);

@override
String toString() {
  return 'HomeData(ads: $ads, topSpecialities: $topSpecialities, topInsurances: $topInsurances, topPackages: $topPackages, topDoctors: $topDoctors, notificationCount: $notificationCount)';
}


}

/// @nodoc
abstract mixin class $HomeDataCopyWith<$Res>  {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) _then) = _$HomeDataCopyWithImpl;
@useResult
$Res call({
 List<AdBanner> ads, List<Speciality> topSpecialities, List<InsuranceModel> topInsurances, List<AdBanner> topPackages, List<Doctor> topDoctors, int notificationCount
});




}
/// @nodoc
class _$HomeDataCopyWithImpl<$Res>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._self, this._then);

  final HomeData _self;
  final $Res Function(HomeData) _then;

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ads = null,Object? topSpecialities = null,Object? topInsurances = null,Object? topPackages = null,Object? topDoctors = null,Object? notificationCount = null,}) {
  return _then(_self.copyWith(
ads: null == ads ? _self.ads : ads // ignore: cast_nullable_to_non_nullable
as List<AdBanner>,topSpecialities: null == topSpecialities ? _self.topSpecialities : topSpecialities // ignore: cast_nullable_to_non_nullable
as List<Speciality>,topInsurances: null == topInsurances ? _self.topInsurances : topInsurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,topPackages: null == topPackages ? _self.topPackages : topPackages // ignore: cast_nullable_to_non_nullable
as List<AdBanner>,topDoctors: null == topDoctors ? _self.topDoctors : topDoctors // ignore: cast_nullable_to_non_nullable
as List<Doctor>,notificationCount: null == notificationCount ? _self.notificationCount : notificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeData].
extension HomeDataPatterns on HomeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeData value)  $default,){
final _that = this;
switch (_that) {
case _HomeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeData value)?  $default,){
final _that = this;
switch (_that) {
case _HomeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AdBanner> ads,  List<Speciality> topSpecialities,  List<InsuranceModel> topInsurances,  List<AdBanner> topPackages,  List<Doctor> topDoctors,  int notificationCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeData() when $default != null:
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.topDoctors,_that.notificationCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AdBanner> ads,  List<Speciality> topSpecialities,  List<InsuranceModel> topInsurances,  List<AdBanner> topPackages,  List<Doctor> topDoctors,  int notificationCount)  $default,) {final _that = this;
switch (_that) {
case _HomeData():
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.topDoctors,_that.notificationCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AdBanner> ads,  List<Speciality> topSpecialities,  List<InsuranceModel> topInsurances,  List<AdBanner> topPackages,  List<Doctor> topDoctors,  int notificationCount)?  $default,) {final _that = this;
switch (_that) {
case _HomeData() when $default != null:
return $default(_that.ads,_that.topSpecialities,_that.topInsurances,_that.topPackages,_that.topDoctors,_that.notificationCount);case _:
  return null;

}
}

}

/// @nodoc


class _HomeData implements HomeData {
  const _HomeData({required final  List<AdBanner> ads, required final  List<Speciality> topSpecialities, required final  List<InsuranceModel> topInsurances, required final  List<AdBanner> topPackages, required final  List<Doctor> topDoctors, required this.notificationCount}): _ads = ads,_topSpecialities = topSpecialities,_topInsurances = topInsurances,_topPackages = topPackages,_topDoctors = topDoctors;
  

 final  List<AdBanner> _ads;
@override List<AdBanner> get ads {
  if (_ads is EqualUnmodifiableListView) return _ads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ads);
}

 final  List<Speciality> _topSpecialities;
@override List<Speciality> get topSpecialities {
  if (_topSpecialities is EqualUnmodifiableListView) return _topSpecialities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topSpecialities);
}

 final  List<InsuranceModel> _topInsurances;
@override List<InsuranceModel> get topInsurances {
  if (_topInsurances is EqualUnmodifiableListView) return _topInsurances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topInsurances);
}

 final  List<AdBanner> _topPackages;
@override List<AdBanner> get topPackages {
  if (_topPackages is EqualUnmodifiableListView) return _topPackages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topPackages);
}

 final  List<Doctor> _topDoctors;
@override List<Doctor> get topDoctors {
  if (_topDoctors is EqualUnmodifiableListView) return _topDoctors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topDoctors);
}

@override final  int notificationCount;

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeDataCopyWith<_HomeData> get copyWith => __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeData&&const DeepCollectionEquality().equals(other._ads, _ads)&&const DeepCollectionEquality().equals(other._topSpecialities, _topSpecialities)&&const DeepCollectionEquality().equals(other._topInsurances, _topInsurances)&&const DeepCollectionEquality().equals(other._topPackages, _topPackages)&&const DeepCollectionEquality().equals(other._topDoctors, _topDoctors)&&(identical(other.notificationCount, notificationCount) || other.notificationCount == notificationCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ads),const DeepCollectionEquality().hash(_topSpecialities),const DeepCollectionEquality().hash(_topInsurances),const DeepCollectionEquality().hash(_topPackages),const DeepCollectionEquality().hash(_topDoctors),notificationCount);

@override
String toString() {
  return 'HomeData(ads: $ads, topSpecialities: $topSpecialities, topInsurances: $topInsurances, topPackages: $topPackages, topDoctors: $topDoctors, notificationCount: $notificationCount)';
}


}

/// @nodoc
abstract mixin class _$HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) _then) = __$HomeDataCopyWithImpl;
@override @useResult
$Res call({
 List<AdBanner> ads, List<Speciality> topSpecialities, List<InsuranceModel> topInsurances, List<AdBanner> topPackages, List<Doctor> topDoctors, int notificationCount
});




}
/// @nodoc
class __$HomeDataCopyWithImpl<$Res>
    implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(this._self, this._then);

  final _HomeData _self;
  final $Res Function(_HomeData) _then;

/// Create a copy of HomeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ads = null,Object? topSpecialities = null,Object? topInsurances = null,Object? topPackages = null,Object? topDoctors = null,Object? notificationCount = null,}) {
  return _then(_HomeData(
ads: null == ads ? _self._ads : ads // ignore: cast_nullable_to_non_nullable
as List<AdBanner>,topSpecialities: null == topSpecialities ? _self._topSpecialities : topSpecialities // ignore: cast_nullable_to_non_nullable
as List<Speciality>,topInsurances: null == topInsurances ? _self._topInsurances : topInsurances // ignore: cast_nullable_to_non_nullable
as List<InsuranceModel>,topPackages: null == topPackages ? _self._topPackages : topPackages // ignore: cast_nullable_to_non_nullable
as List<AdBanner>,topDoctors: null == topDoctors ? _self._topDoctors : topDoctors // ignore: cast_nullable_to_non_nullable
as List<Doctor>,notificationCount: null == notificationCount ? _self.notificationCount : notificationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
