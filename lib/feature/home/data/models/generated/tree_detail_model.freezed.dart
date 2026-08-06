// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tree_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TreeDetailModel {

@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int get idTreedetail;@JsonKey(name: 'tree_name', fromJson: stringFromJson) String get treeName;@JsonKey(name: 'level', fromJson: intFromJson) int get level;@JsonKey(name: 'seq_no', fromJson: intFromJson) int get seqNo;@JsonKey(name: 'parent', fromJson: intFromJson) int get parent;@JsonKey(name: 'tree_path', fromJson: stringFromJson) String get treePath;
/// Create a copy of TreeDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeDetailModelCopyWith<TreeDetailModel> get copyWith => _$TreeDetailModelCopyWithImpl<TreeDetailModel>(this as TreeDetailModel, _$identity);

  /// Serializes this TreeDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeDetailModel&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath);

@override
String toString() {
  return 'TreeDetailModel(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath)';
}


}

/// @nodoc
abstract mixin class $TreeDetailModelCopyWith<$Res>  {
  factory $TreeDetailModelCopyWith(TreeDetailModel value, $Res Function(TreeDetailModel) _then) = _$TreeDetailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int idTreedetail,@JsonKey(name: 'tree_name', fromJson: stringFromJson) String treeName,@JsonKey(name: 'level', fromJson: intFromJson) int level,@JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,@JsonKey(name: 'parent', fromJson: intFromJson) int parent,@JsonKey(name: 'tree_path', fromJson: stringFromJson) String treePath
});




}
/// @nodoc
class _$TreeDetailModelCopyWithImpl<$Res>
    implements $TreeDetailModelCopyWith<$Res> {
  _$TreeDetailModelCopyWithImpl(this._self, this._then);

  final TreeDetailModel _self;
  final $Res Function(TreeDetailModel) _then;

/// Create a copy of TreeDetailModel
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


/// Adds pattern-matching-related methods to [TreeDetailModel].
extension TreeDetailModelPatterns on TreeDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _TreeDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _TreeDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeDetailModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath)  $default,) {final _that = this;
switch (_that) {
case _TreeDetailModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath)?  $default,) {final _that = this;
switch (_that) {
case _TreeDetailModel() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreeDetailModel extends TreeDetailModel {
  const _TreeDetailModel({@JsonKey(name: 'id_treedetail', fromJson: intFromJson) required this.idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson) this.treeName = '', @JsonKey(name: 'level', fromJson: intFromJson) this.level = 0, @JsonKey(name: 'seq_no', fromJson: intFromJson) this.seqNo = 0, @JsonKey(name: 'parent', fromJson: intFromJson) this.parent = 0, @JsonKey(name: 'tree_path', fromJson: stringFromJson) this.treePath = ''}): super._();
  factory _TreeDetailModel.fromJson(Map<String, dynamic> json) => _$TreeDetailModelFromJson(json);

@override@JsonKey(name: 'id_treedetail', fromJson: intFromJson) final  int idTreedetail;
@override@JsonKey(name: 'tree_name', fromJson: stringFromJson) final  String treeName;
@override@JsonKey(name: 'level', fromJson: intFromJson) final  int level;
@override@JsonKey(name: 'seq_no', fromJson: intFromJson) final  int seqNo;
@override@JsonKey(name: 'parent', fromJson: intFromJson) final  int parent;
@override@JsonKey(name: 'tree_path', fromJson: stringFromJson) final  String treePath;

/// Create a copy of TreeDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeDetailModelCopyWith<_TreeDetailModel> get copyWith => __$TreeDetailModelCopyWithImpl<_TreeDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreeDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeDetailModel&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath);

@override
String toString() {
  return 'TreeDetailModel(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath)';
}


}

/// @nodoc
abstract mixin class _$TreeDetailModelCopyWith<$Res> implements $TreeDetailModelCopyWith<$Res> {
  factory _$TreeDetailModelCopyWith(_TreeDetailModel value, $Res Function(_TreeDetailModel) _then) = __$TreeDetailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int idTreedetail,@JsonKey(name: 'tree_name', fromJson: stringFromJson) String treeName,@JsonKey(name: 'level', fromJson: intFromJson) int level,@JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,@JsonKey(name: 'parent', fromJson: intFromJson) int parent,@JsonKey(name: 'tree_path', fromJson: stringFromJson) String treePath
});




}
/// @nodoc
class __$TreeDetailModelCopyWithImpl<$Res>
    implements _$TreeDetailModelCopyWith<$Res> {
  __$TreeDetailModelCopyWithImpl(this._self, this._then);

  final _TreeDetailModel _self;
  final $Res Function(_TreeDetailModel) _then;

/// Create a copy of TreeDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,}) {
  return _then(_TreeDetailModel(
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
