// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberModel {

@JsonKey(name: 'Id', fromJson: intFromJson) int get id;@JsonKey(name: 'Name', fromJson: stringFromJson) String get name;@JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson) String? get mobileNo;@JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson) String? get emailId;@JsonKey(name: 'Age', fromJson: stringFromJson) String get age;@JsonKey(name: 'SSN', fromJson: stringFromJson) String get nationalId;@JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson) String? get profileImage;@JsonKey(name: 'Is_Insu', fromJson: boolFromJson) bool get isInsurance;@JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson) bool get isInsuranceExpired;@JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson) DateTime? get insuranceExpDttm;@JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson) DateTime? get dob;@JsonKey(name: 'member_no', fromJson: _nullableStringFromJson) String? get memberNo;@JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson) String? get insuranceName;@JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) int? get insuranceId;@JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) String? get gender;@JsonKey(name: 'docs') List<MmemberDocumentModel> get memberDocs; bool get isSelected;
/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberModelCopyWith<MemberModel> get copyWith => _$MemberModelCopyWithImpl<MemberModel>(this as MemberModel, _$identity);

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isInsurance, isInsurance) || other.isInsurance == isInsurance)&&(identical(other.isInsuranceExpired, isInsuranceExpired) || other.isInsuranceExpired == isInsuranceExpired)&&(identical(other.insuranceExpDttm, insuranceExpDttm) || other.insuranceExpDttm == insuranceExpDttm)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.memberNo, memberNo) || other.memberNo == memberNo)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other.memberDocs, memberDocs)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,emailId,age,nationalId,profileImage,isInsurance,isInsuranceExpired,insuranceExpDttm,dob,memberNo,insuranceName,insuranceId,gender,const DeepCollectionEquality().hash(memberDocs),isSelected);

@override
String toString() {
  return 'MemberModel(id: $id, name: $name, mobileNo: $mobileNo, emailId: $emailId, age: $age, nationalId: $nationalId, profileImage: $profileImage, isInsurance: $isInsurance, isInsuranceExpired: $isInsuranceExpired, insuranceExpDttm: $insuranceExpDttm, dob: $dob, memberNo: $memberNo, insuranceName: $insuranceName, insuranceId: $insuranceId, gender: $gender, memberDocs: $memberDocs, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $MemberModelCopyWith<$Res>  {
  factory $MemberModelCopyWith(MemberModel value, $Res Function(MemberModel) _then) = _$MemberModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id', fromJson: intFromJson) int id,@JsonKey(name: 'Name', fromJson: stringFromJson) String name,@JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson) String? mobileNo,@JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson) String? emailId,@JsonKey(name: 'Age', fromJson: stringFromJson) String age,@JsonKey(name: 'SSN', fromJson: stringFromJson) String nationalId,@JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson) String? profileImage,@JsonKey(name: 'Is_Insu', fromJson: boolFromJson) bool isInsurance,@JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson) bool isInsuranceExpired,@JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson) DateTime? insuranceExpDttm,@JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson) DateTime? dob,@JsonKey(name: 'member_no', fromJson: _nullableStringFromJson) String? memberNo,@JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson) String? insuranceName,@JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) int? insuranceId,@JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) String? gender,@JsonKey(name: 'docs') List<MmemberDocumentModel> memberDocs, bool isSelected
});




}
/// @nodoc
class _$MemberModelCopyWithImpl<$Res>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._self, this._then);

  final MemberModel _self;
  final $Res Function(MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? mobileNo = freezed,Object? emailId = freezed,Object? age = null,Object? nationalId = null,Object? profileImage = freezed,Object? isInsurance = null,Object? isInsuranceExpired = null,Object? insuranceExpDttm = freezed,Object? dob = freezed,Object? memberNo = freezed,Object? insuranceName = freezed,Object? insuranceId = freezed,Object? gender = freezed,Object? memberDocs = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,isInsurance: null == isInsurance ? _self.isInsurance : isInsurance // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceExpired: null == isInsuranceExpired ? _self.isInsuranceExpired : isInsuranceExpired // ignore: cast_nullable_to_non_nullable
as bool,insuranceExpDttm: freezed == insuranceExpDttm ? _self.insuranceExpDttm : insuranceExpDttm // ignore: cast_nullable_to_non_nullable
as DateTime?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,memberNo: freezed == memberNo ? _self.memberNo : memberNo // ignore: cast_nullable_to_non_nullable
as String?,insuranceName: freezed == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String?,insuranceId: freezed == insuranceId ? _self.insuranceId : insuranceId // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,memberDocs: null == memberDocs ? _self.memberDocs : memberDocs // ignore: cast_nullable_to_non_nullable
as List<MmemberDocumentModel>,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberModel].
extension MemberModelPatterns on MemberModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'Name', fromJson: stringFromJson)  String name, @JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson)  String? mobileNo, @JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson)  String? emailId, @JsonKey(name: 'Age', fromJson: stringFromJson)  String age, @JsonKey(name: 'SSN', fromJson: stringFromJson)  String nationalId, @JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson)  String? profileImage, @JsonKey(name: 'Is_Insu', fromJson: boolFromJson)  bool isInsurance, @JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson)  bool isInsuranceExpired, @JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson)  DateTime? insuranceExpDttm, @JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson)  DateTime? dob, @JsonKey(name: 'member_no', fromJson: _nullableStringFromJson)  String? memberNo, @JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson)  String? insuranceName, @JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson)  int? insuranceId, @JsonKey(name: 'Gender', fromJson: _nullableStringFromJson)  String? gender, @JsonKey(name: 'docs')  List<MmemberDocumentModel> memberDocs,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.emailId,_that.age,_that.nationalId,_that.profileImage,_that.isInsurance,_that.isInsuranceExpired,_that.insuranceExpDttm,_that.dob,_that.memberNo,_that.insuranceName,_that.insuranceId,_that.gender,_that.memberDocs,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'Name', fromJson: stringFromJson)  String name, @JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson)  String? mobileNo, @JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson)  String? emailId, @JsonKey(name: 'Age', fromJson: stringFromJson)  String age, @JsonKey(name: 'SSN', fromJson: stringFromJson)  String nationalId, @JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson)  String? profileImage, @JsonKey(name: 'Is_Insu', fromJson: boolFromJson)  bool isInsurance, @JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson)  bool isInsuranceExpired, @JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson)  DateTime? insuranceExpDttm, @JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson)  DateTime? dob, @JsonKey(name: 'member_no', fromJson: _nullableStringFromJson)  String? memberNo, @JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson)  String? insuranceName, @JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson)  int? insuranceId, @JsonKey(name: 'Gender', fromJson: _nullableStringFromJson)  String? gender, @JsonKey(name: 'docs')  List<MmemberDocumentModel> memberDocs,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _MemberModel():
return $default(_that.id,_that.name,_that.mobileNo,_that.emailId,_that.age,_that.nationalId,_that.profileImage,_that.isInsurance,_that.isInsuranceExpired,_that.insuranceExpDttm,_that.dob,_that.memberNo,_that.insuranceName,_that.insuranceId,_that.gender,_that.memberDocs,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id', fromJson: intFromJson)  int id, @JsonKey(name: 'Name', fromJson: stringFromJson)  String name, @JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson)  String? mobileNo, @JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson)  String? emailId, @JsonKey(name: 'Age', fromJson: stringFromJson)  String age, @JsonKey(name: 'SSN', fromJson: stringFromJson)  String nationalId, @JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson)  String? profileImage, @JsonKey(name: 'Is_Insu', fromJson: boolFromJson)  bool isInsurance, @JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson)  bool isInsuranceExpired, @JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson)  DateTime? insuranceExpDttm, @JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson)  DateTime? dob, @JsonKey(name: 'member_no', fromJson: _nullableStringFromJson)  String? memberNo, @JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson)  String? insuranceName, @JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson)  int? insuranceId, @JsonKey(name: 'Gender', fromJson: _nullableStringFromJson)  String? gender, @JsonKey(name: 'docs')  List<MmemberDocumentModel> memberDocs,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.emailId,_that.age,_that.nationalId,_that.profileImage,_that.isInsurance,_that.isInsuranceExpired,_that.insuranceExpDttm,_that.dob,_that.memberNo,_that.insuranceName,_that.insuranceId,_that.gender,_that.memberDocs,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberModel extends MemberModel {
  const _MemberModel({@JsonKey(name: 'Id', fromJson: intFromJson) required this.id, @JsonKey(name: 'Name', fromJson: stringFromJson) required this.name, @JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson) this.mobileNo, @JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson) this.emailId, @JsonKey(name: 'Age', fromJson: stringFromJson) required this.age, @JsonKey(name: 'SSN', fromJson: stringFromJson) required this.nationalId, @JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson) this.profileImage, @JsonKey(name: 'Is_Insu', fromJson: boolFromJson) required this.isInsurance, @JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson) required this.isInsuranceExpired, @JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson) this.insuranceExpDttm = null, @JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson) this.dob = null, @JsonKey(name: 'member_no', fromJson: _nullableStringFromJson) this.memberNo, @JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson) this.insuranceName, @JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) this.insuranceId, @JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) this.gender, @JsonKey(name: 'docs') final  List<MmemberDocumentModel> memberDocs = const [], this.isSelected = false}): _memberDocs = memberDocs,super._();
  factory _MemberModel.fromJson(Map<String, dynamic> json) => _$MemberModelFromJson(json);

@override@JsonKey(name: 'Id', fromJson: intFromJson) final  int id;
@override@JsonKey(name: 'Name', fromJson: stringFromJson) final  String name;
@override@JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson) final  String? mobileNo;
@override@JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson) final  String? emailId;
@override@JsonKey(name: 'Age', fromJson: stringFromJson) final  String age;
@override@JsonKey(name: 'SSN', fromJson: stringFromJson) final  String nationalId;
@override@JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson) final  String? profileImage;
@override@JsonKey(name: 'Is_Insu', fromJson: boolFromJson) final  bool isInsurance;
@override@JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson) final  bool isInsuranceExpired;
@override@JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson) final  DateTime? insuranceExpDttm;
@override@JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson) final  DateTime? dob;
@override@JsonKey(name: 'member_no', fromJson: _nullableStringFromJson) final  String? memberNo;
@override@JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson) final  String? insuranceName;
@override@JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) final  int? insuranceId;
@override@JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) final  String? gender;
 final  List<MmemberDocumentModel> _memberDocs;
@override@JsonKey(name: 'docs') List<MmemberDocumentModel> get memberDocs {
  if (_memberDocs is EqualUnmodifiableListView) return _memberDocs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberDocs);
}

@override@JsonKey() final  bool isSelected;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberModelCopyWith<_MemberModel> get copyWith => __$MemberModelCopyWithImpl<_MemberModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isInsurance, isInsurance) || other.isInsurance == isInsurance)&&(identical(other.isInsuranceExpired, isInsuranceExpired) || other.isInsuranceExpired == isInsuranceExpired)&&(identical(other.insuranceExpDttm, insuranceExpDttm) || other.insuranceExpDttm == insuranceExpDttm)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.memberNo, memberNo) || other.memberNo == memberNo)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other._memberDocs, _memberDocs)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,emailId,age,nationalId,profileImage,isInsurance,isInsuranceExpired,insuranceExpDttm,dob,memberNo,insuranceName,insuranceId,gender,const DeepCollectionEquality().hash(_memberDocs),isSelected);

@override
String toString() {
  return 'MemberModel(id: $id, name: $name, mobileNo: $mobileNo, emailId: $emailId, age: $age, nationalId: $nationalId, profileImage: $profileImage, isInsurance: $isInsurance, isInsuranceExpired: $isInsuranceExpired, insuranceExpDttm: $insuranceExpDttm, dob: $dob, memberNo: $memberNo, insuranceName: $insuranceName, insuranceId: $insuranceId, gender: $gender, memberDocs: $memberDocs, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$MemberModelCopyWith<$Res> implements $MemberModelCopyWith<$Res> {
  factory _$MemberModelCopyWith(_MemberModel value, $Res Function(_MemberModel) _then) = __$MemberModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id', fromJson: intFromJson) int id,@JsonKey(name: 'Name', fromJson: stringFromJson) String name,@JsonKey(name: 'MobileNo', fromJson: _nullableStringFromJson) String? mobileNo,@JsonKey(name: 'EmailID', fromJson: _nullableStringFromJson) String? emailId,@JsonKey(name: 'Age', fromJson: stringFromJson) String age,@JsonKey(name: 'SSN', fromJson: stringFromJson) String nationalId,@JsonKey(name: 'Profile_Img', fromJson: _nullableStringFromJson) String? profileImage,@JsonKey(name: 'Is_Insu', fromJson: boolFromJson) bool isInsurance,@JsonKey(name: 'Is_InsuExpired', fromJson: boolFromJson) bool isInsuranceExpired,@JsonKey(name: 'Insur_Exp', fromJson: _nullableDateTimeFromJson) DateTime? insuranceExpDttm,@JsonKey(name: 'Dob', fromJson: _nullableDateTimeFromJson) DateTime? dob,@JsonKey(name: 'member_no', fromJson: _nullableStringFromJson) String? memberNo,@JsonKey(name: 'insur_name', fromJson: _nullableStringFromJson) String? insuranceName,@JsonKey(name: 'insu_id', fromJson: _nullableIntFromJson) int? insuranceId,@JsonKey(name: 'Gender', fromJson: _nullableStringFromJson) String? gender,@JsonKey(name: 'docs') List<MmemberDocumentModel> memberDocs, bool isSelected
});




}
/// @nodoc
class __$MemberModelCopyWithImpl<$Res>
    implements _$MemberModelCopyWith<$Res> {
  __$MemberModelCopyWithImpl(this._self, this._then);

  final _MemberModel _self;
  final $Res Function(_MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? mobileNo = freezed,Object? emailId = freezed,Object? age = null,Object? nationalId = null,Object? profileImage = freezed,Object? isInsurance = null,Object? isInsuranceExpired = null,Object? insuranceExpDttm = freezed,Object? dob = freezed,Object? memberNo = freezed,Object? insuranceName = freezed,Object? insuranceId = freezed,Object? gender = freezed,Object? memberDocs = null,Object? isSelected = null,}) {
  return _then(_MemberModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,isInsurance: null == isInsurance ? _self.isInsurance : isInsurance // ignore: cast_nullable_to_non_nullable
as bool,isInsuranceExpired: null == isInsuranceExpired ? _self.isInsuranceExpired : isInsuranceExpired // ignore: cast_nullable_to_non_nullable
as bool,insuranceExpDttm: freezed == insuranceExpDttm ? _self.insuranceExpDttm : insuranceExpDttm // ignore: cast_nullable_to_non_nullable
as DateTime?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,memberNo: freezed == memberNo ? _self.memberNo : memberNo // ignore: cast_nullable_to_non_nullable
as String?,insuranceName: freezed == insuranceName ? _self.insuranceName : insuranceName // ignore: cast_nullable_to_non_nullable
as String?,insuranceId: freezed == insuranceId ? _self.insuranceId : insuranceId // ignore: cast_nullable_to_non_nullable
as int?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,memberDocs: null == memberDocs ? _self._memberDocs : memberDocs // ignore: cast_nullable_to_non_nullable
as List<MmemberDocumentModel>,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
