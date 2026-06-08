// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../insurance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsuranceModel {

@JsonKey(name: 'id_insurance') int get idInsurance;@JsonKey(name: 'ins_name') String get insuranceName;@JsonKey(name: "Img") String? get img;
/// Create a copy of InsuranceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsuranceModelCopyWith<InsuranceModel> get copyWith => _$InsuranceModelCopyWithImpl<InsuranceModel>(this as InsuranceModel, _$identity);

  /// Serializes this InsuranceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsuranceModel&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.img, img) || other.img == img));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idInsurance,insuranceName,img);

@override
String toString() {
  return 'InsuranceModel(idInsurance: $idInsurance, insuranceName: $insuranceName, img: $img)';
}


}

/// @nodoc
abstract mixin class $InsuranceModelCopyWith<$Res>  {
  factory $InsuranceModelCopyWith(InsuranceModel value, $Res Function(InsuranceModel) _then) = _$InsuranceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_insurance') int idInsurance,@JsonKey(name: 'ins_name') String insuranceName,@JsonKey(name: "Img") String? img
});




}
/// @nodoc
class _$InsuranceModelCopyWithImpl<$Res>
    implements $InsuranceModelCopyWith<$Res> {
  _$InsuranceModelCopyWithImpl(this._self, this._then);

  final InsuranceModel _self;
  final $Res Function(InsuranceModel) _then;

/// Create a copy of InsuranceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idInsurance = null,Object? insuranceName = null,Object? img = freezed,}) {
  return _then(_self.copyWith(
idInsurance: null == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int,insuranceName: null == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InsuranceModel].
extension InsuranceModelPatterns on InsuranceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsuranceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsuranceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsuranceModel value)  $default,){
final _that = this;
switch (_that) {
case _InsuranceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsuranceModel value)?  $default,){
final _that = this;
switch (_that) {
case _InsuranceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'ins_name')  String insuranceName, @JsonKey(name: "Img")  String? img)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsuranceModel() when $default != null:
return $default(_that.idInsurance,_that.insuranceName,_that.img);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'ins_name')  String insuranceName, @JsonKey(name: "Img")  String? img)  $default,) {final _that = this;
switch (_that) {
case _InsuranceModel():
return $default(_that.idInsurance,_that.insuranceName,_that.img);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_insurance')  int idInsurance, @JsonKey(name: 'ins_name')  String insuranceName, @JsonKey(name: "Img")  String? img)?  $default,) {final _that = this;
switch (_that) {
case _InsuranceModel() when $default != null:
return $default(_that.idInsurance,_that.insuranceName,_that.img);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsuranceModel implements InsuranceModel {
  const _InsuranceModel({@JsonKey(name: 'id_insurance') required this.idInsurance, @JsonKey(name: 'ins_name') required this.insuranceName, @JsonKey(name: "Img") this.img = null});
  factory _InsuranceModel.fromJson(Map<String, dynamic> json) => _$InsuranceModelFromJson(json);

@override@JsonKey(name: 'id_insurance') final  int idInsurance;
@override@JsonKey(name: 'ins_name') final  String insuranceName;
@override@JsonKey(name: "Img") final  String? img;

/// Create a copy of InsuranceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsuranceModelCopyWith<_InsuranceModel> get copyWith => __$InsuranceModelCopyWithImpl<_InsuranceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsuranceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsuranceModel&&(identical(other.idInsurance, idInsurance) || other.idInsurance == idInsurance)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.img, img) || other.img == img));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idInsurance,insuranceName,img);

@override
String toString() {
  return 'InsuranceModel(idInsurance: $idInsurance, insuranceName: $insuranceName, img: $img)';
}


}

/// @nodoc
abstract mixin class _$InsuranceModelCopyWith<$Res> implements $InsuranceModelCopyWith<$Res> {
  factory _$InsuranceModelCopyWith(_InsuranceModel value, $Res Function(_InsuranceModel) _then) = __$InsuranceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_insurance') int idInsurance,@JsonKey(name: 'ins_name') String insuranceName,@JsonKey(name: "Img") String? img
});




}
/// @nodoc
class __$InsuranceModelCopyWithImpl<$Res>
    implements _$InsuranceModelCopyWith<$Res> {
  __$InsuranceModelCopyWithImpl(this._self, this._then);

  final _InsuranceModel _self;
  final $Res Function(_InsuranceModel) _then;

/// Create a copy of InsuranceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idInsurance = null,Object? insuranceName = null,Object? img = freezed,}) {
  return _then(_InsuranceModel(
idInsurance: null == idInsurance ? _self.idInsurance : idInsurance // ignore: cast_nullable_to_non_nullable
as int,insuranceName: null == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
