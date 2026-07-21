// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Member {

 int get id; String get name; String? get mobileNo; String? get emailId; String get age; String get nationalId; String? get profileImage; bool get isInsurance; bool get isInsuranceExpired; DateTime? get insuranceExpDttm; DateTime? get dob; String? get memberNo; String? get insuranceName; int? get insuranceId; String? get gender; List<MemberDocument> get memberDocs; bool get isSelected;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isInsurance, isInsurance) || other.isInsurance == isInsurance)&&(identical(other.isInsuranceExpired, isInsuranceExpired) || other.isInsuranceExpired == isInsuranceExpired)&&(identical(other.insuranceExpDttm, insuranceExpDttm) || other.insuranceExpDttm == insuranceExpDttm)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.memberNo, memberNo) || other.memberNo == memberNo)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other.memberDocs, memberDocs)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,emailId,age,nationalId,profileImage,isInsurance,isInsuranceExpired,insuranceExpDttm,dob,memberNo,insuranceName,insuranceId,gender,const DeepCollectionEquality().hash(memberDocs),isSelected);

@override
String toString() {
  return 'Member(id: $id, name: $name, mobileNo: $mobileNo, emailId: $emailId, age: $age, nationalId: $nationalId, profileImage: $profileImage, isInsurance: $isInsurance, isInsuranceExpired: $isInsuranceExpired, insuranceExpDttm: $insuranceExpDttm, dob: $dob, memberNo: $memberNo, insuranceName: $insuranceName, insuranceId: $insuranceId, gender: $gender, memberDocs: $memberDocs, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? mobileNo, String? emailId, String age, String nationalId, String? profileImage, bool isInsurance, bool isInsuranceExpired, DateTime? insuranceExpDttm, DateTime? dob, String? memberNo, String? insuranceName, int? insuranceId, String? gender, List<MemberDocument> memberDocs, bool isSelected
});




}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
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
as List<MemberDocument>,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Member].
extension MemberPatterns on Member {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Member value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Member value)  $default,){
final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Member value)?  $default,){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? mobileNo,  String? emailId,  String age,  String nationalId,  String? profileImage,  bool isInsurance,  bool isInsuranceExpired,  DateTime? insuranceExpDttm,  DateTime? dob,  String? memberNo,  String? insuranceName,  int? insuranceId,  String? gender,  List<MemberDocument> memberDocs,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? mobileNo,  String? emailId,  String age,  String nationalId,  String? profileImage,  bool isInsurance,  bool isInsuranceExpired,  DateTime? insuranceExpDttm,  DateTime? dob,  String? memberNo,  String? insuranceName,  int? insuranceId,  String? gender,  List<MemberDocument> memberDocs,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? mobileNo,  String? emailId,  String age,  String nationalId,  String? profileImage,  bool isInsurance,  bool isInsuranceExpired,  DateTime? insuranceExpDttm,  DateTime? dob,  String? memberNo,  String? insuranceName,  int? insuranceId,  String? gender,  List<MemberDocument> memberDocs,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.name,_that.mobileNo,_that.emailId,_that.age,_that.nationalId,_that.profileImage,_that.isInsurance,_that.isInsuranceExpired,_that.insuranceExpDttm,_that.dob,_that.memberNo,_that.insuranceName,_that.insuranceId,_that.gender,_that.memberDocs,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Member implements Member {
  const _Member({required this.id, required this.name, this.mobileNo, this.emailId, required this.age, required this.nationalId, this.profileImage, required this.isInsurance, required this.isInsuranceExpired, this.insuranceExpDttm, this.dob, this.memberNo, this.insuranceName, this.insuranceId, this.gender, final  List<MemberDocument> memberDocs = const [], this.isSelected = false}): _memberDocs = memberDocs;
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? mobileNo;
@override final  String? emailId;
@override final  String age;
@override final  String nationalId;
@override final  String? profileImage;
@override final  bool isInsurance;
@override final  bool isInsuranceExpired;
@override final  DateTime? insuranceExpDttm;
@override final  DateTime? dob;
@override final  String? memberNo;
@override final  String? insuranceName;
@override final  int? insuranceId;
@override final  String? gender;
 final  List<MemberDocument> _memberDocs;
@override@JsonKey() List<MemberDocument> get memberDocs {
  if (_memberDocs is EqualUnmodifiableListView) return _memberDocs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberDocs);
}

@override@JsonKey() final  bool isSelected;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.age, age) || other.age == age)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.isInsurance, isInsurance) || other.isInsurance == isInsurance)&&(identical(other.isInsuranceExpired, isInsuranceExpired) || other.isInsuranceExpired == isInsuranceExpired)&&(identical(other.insuranceExpDttm, insuranceExpDttm) || other.insuranceExpDttm == insuranceExpDttm)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.memberNo, memberNo) || other.memberNo == memberNo)&&(identical(other.insuranceName, insuranceName) || other.insuranceName == insuranceName)&&(identical(other.insuranceId, insuranceId) || other.insuranceId == insuranceId)&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other._memberDocs, _memberDocs)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mobileNo,emailId,age,nationalId,profileImage,isInsurance,isInsuranceExpired,insuranceExpDttm,dob,memberNo,insuranceName,insuranceId,gender,const DeepCollectionEquality().hash(_memberDocs),isSelected);

@override
String toString() {
  return 'Member(id: $id, name: $name, mobileNo: $mobileNo, emailId: $emailId, age: $age, nationalId: $nationalId, profileImage: $profileImage, isInsurance: $isInsurance, isInsuranceExpired: $isInsuranceExpired, insuranceExpDttm: $insuranceExpDttm, dob: $dob, memberNo: $memberNo, insuranceName: $insuranceName, insuranceId: $insuranceId, gender: $gender, memberDocs: $memberDocs, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? mobileNo, String? emailId, String age, String nationalId, String? profileImage, bool isInsurance, bool isInsuranceExpired, DateTime? insuranceExpDttm, DateTime? dob, String? memberNo, String? insuranceName, int? insuranceId, String? gender, List<MemberDocument> memberDocs, bool isSelected
});




}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? mobileNo = freezed,Object? emailId = freezed,Object? age = null,Object? nationalId = null,Object? profileImage = freezed,Object? isInsurance = null,Object? isInsuranceExpired = null,Object? insuranceExpDttm = freezed,Object? dob = freezed,Object? memberNo = freezed,Object? insuranceName = freezed,Object? insuranceId = freezed,Object? gender = freezed,Object? memberDocs = null,Object? isSelected = null,}) {
  return _then(_Member(
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
as List<MemberDocument>,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
