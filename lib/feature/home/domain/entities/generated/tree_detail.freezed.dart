// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tree_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TreeDetail {

 int get idTreedetail; String get treeName; int get level; int get seqNo; int get parent; String get treePath;
/// Create a copy of TreeDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeDetailCopyWith<TreeDetail> get copyWith => _$TreeDetailCopyWithImpl<TreeDetail>(this as TreeDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeDetail&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath));
}


@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath);

@override
String toString() {
  return 'TreeDetail(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath)';
}


}

/// @nodoc
abstract mixin class $TreeDetailCopyWith<$Res>  {
  factory $TreeDetailCopyWith(TreeDetail value, $Res Function(TreeDetail) _then) = _$TreeDetailCopyWithImpl;
@useResult
$Res call({
 int idTreedetail, String treeName, int level, int seqNo, int parent, String treePath
});




}
/// @nodoc
class _$TreeDetailCopyWithImpl<$Res>
    implements $TreeDetailCopyWith<$Res> {
  _$TreeDetailCopyWithImpl(this._self, this._then);

  final TreeDetail _self;
  final $Res Function(TreeDetail) _then;

/// Create a copy of TreeDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,}) {
  return _then(_self.copyWith(
idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,treeName: null == treeName ? _self.treeName : treeName // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as int,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,treePath: null == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TreeDetail].
extension TreeDetailPatterns on TreeDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeDetail value)  $default,){
final _that = this;
switch (_that) {
case _TreeDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TreeDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeDetail() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath)  $default,) {final _that = this;
switch (_that) {
case _TreeDetail():
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath)?  $default,) {final _that = this;
switch (_that) {
case _TreeDetail() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath);case _:
  return null;

}
}

}

/// @nodoc


class _TreeDetail implements TreeDetail {
  const _TreeDetail({required this.idTreedetail, required this.treeName, required this.level, required this.seqNo, required this.parent, required this.treePath});
  

@override final  int idTreedetail;
@override final  String treeName;
@override final  int level;
@override final  int seqNo;
@override final  int parent;
@override final  String treePath;

/// Create a copy of TreeDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeDetailCopyWith<_TreeDetail> get copyWith => __$TreeDetailCopyWithImpl<_TreeDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeDetail&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath));
}


@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath);

@override
String toString() {
  return 'TreeDetail(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath)';
}


}

/// @nodoc
abstract mixin class _$TreeDetailCopyWith<$Res> implements $TreeDetailCopyWith<$Res> {
  factory _$TreeDetailCopyWith(_TreeDetail value, $Res Function(_TreeDetail) _then) = __$TreeDetailCopyWithImpl;
@override @useResult
$Res call({
 int idTreedetail, String treeName, int level, int seqNo, int parent, String treePath
});




}
/// @nodoc
class __$TreeDetailCopyWithImpl<$Res>
    implements _$TreeDetailCopyWith<$Res> {
  __$TreeDetailCopyWithImpl(this._self, this._then);

  final _TreeDetail _self;
  final $Res Function(_TreeDetail) _then;

/// Create a copy of TreeDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,}) {
  return _then(_TreeDetail(
idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,treeName: null == treeName ? _self.treeName : treeName // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as int,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,treePath: null == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
