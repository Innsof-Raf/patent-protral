// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tree_detail_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TreeDetailItemModel {

@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int get idTreedetail;@JsonKey(name: 'tree_name', fromJson: stringFromJson) String get treeName;@JsonKey(name: 'level', fromJson: intFromJson) int get level;@JsonKey(name: 'seq_no', fromJson: intFromJson) int get seqNo;@JsonKey(name: 'parent', fromJson: intFromJson) int get parent;@JsonKey(name: 'tree_path', fromJson: stringFromJson) String get treePath;@JsonKey(name: 'id_item', fromJson: intFromJson) int get idItem;@JsonKey(name: 'item_id', fromJson: stringFromJson) String get itemId;@JsonKey(name: 'item_name', fromJson: stringFromJson) String get itemName;@JsonKey(name: 'price', fromJson: doubleFromJson) double get price;@JsonKey(name: 'discount', fromJson: doubleFromJson) double get discount;@JsonKey(name: 'offer_tag', fromJson: stringFromJson) String get offerTag;
/// Create a copy of TreeDetailItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeDetailItemModelCopyWith<TreeDetailItemModel> get copyWith => _$TreeDetailItemModelCopyWithImpl<TreeDetailItemModel>(this as TreeDetailItemModel, _$identity);

  /// Serializes this TreeDetailItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeDetailItemModel&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.offerTag, offerTag) || other.offerTag == offerTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath,idItem,itemId,itemName,price,discount,offerTag);

@override
String toString() {
  return 'TreeDetailItemModel(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath, idItem: $idItem, itemId: $itemId, itemName: $itemName, price: $price, discount: $discount, offerTag: $offerTag)';
}


}

/// @nodoc
abstract mixin class $TreeDetailItemModelCopyWith<$Res>  {
  factory $TreeDetailItemModelCopyWith(TreeDetailItemModel value, $Res Function(TreeDetailItemModel) _then) = _$TreeDetailItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int idTreedetail,@JsonKey(name: 'tree_name', fromJson: stringFromJson) String treeName,@JsonKey(name: 'level', fromJson: intFromJson) int level,@JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,@JsonKey(name: 'parent', fromJson: intFromJson) int parent,@JsonKey(name: 'tree_path', fromJson: stringFromJson) String treePath,@JsonKey(name: 'id_item', fromJson: intFromJson) int idItem,@JsonKey(name: 'item_id', fromJson: stringFromJson) String itemId,@JsonKey(name: 'item_name', fromJson: stringFromJson) String itemName,@JsonKey(name: 'price', fromJson: doubleFromJson) double price,@JsonKey(name: 'discount', fromJson: doubleFromJson) double discount,@JsonKey(name: 'offer_tag', fromJson: stringFromJson) String offerTag
});




}
/// @nodoc
class _$TreeDetailItemModelCopyWithImpl<$Res>
    implements $TreeDetailItemModelCopyWith<$Res> {
  _$TreeDetailItemModelCopyWithImpl(this._self, this._then);

  final TreeDetailItemModel _self;
  final $Res Function(TreeDetailItemModel) _then;

/// Create a copy of TreeDetailItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,Object? idItem = null,Object? itemId = null,Object? itemName = null,Object? price = null,Object? discount = null,Object? offerTag = null,}) {
  return _then(_self.copyWith(
idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,treeName: null == treeName ? _self.treeName : treeName // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as int,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,treePath: null == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String,idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,offerTag: null == offerTag ? _self.offerTag : offerTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TreeDetailItemModel].
extension TreeDetailItemModelPatterns on TreeDetailItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeDetailItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeDetailItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeDetailItemModel value)  $default,){
final _that = this;
switch (_that) {
case _TreeDetailItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeDetailItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _TreeDetailItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath, @JsonKey(name: 'id_item', fromJson: intFromJson)  int idItem, @JsonKey(name: 'item_id', fromJson: stringFromJson)  String itemId, @JsonKey(name: 'item_name', fromJson: stringFromJson)  String itemName, @JsonKey(name: 'price', fromJson: doubleFromJson)  double price, @JsonKey(name: 'discount', fromJson: doubleFromJson)  double discount, @JsonKey(name: 'offer_tag', fromJson: stringFromJson)  String offerTag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeDetailItemModel() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath,_that.idItem,_that.itemId,_that.itemName,_that.price,_that.discount,_that.offerTag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath, @JsonKey(name: 'id_item', fromJson: intFromJson)  int idItem, @JsonKey(name: 'item_id', fromJson: stringFromJson)  String itemId, @JsonKey(name: 'item_name', fromJson: stringFromJson)  String itemName, @JsonKey(name: 'price', fromJson: doubleFromJson)  double price, @JsonKey(name: 'discount', fromJson: doubleFromJson)  double discount, @JsonKey(name: 'offer_tag', fromJson: stringFromJson)  String offerTag)  $default,) {final _that = this;
switch (_that) {
case _TreeDetailItemModel():
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath,_that.idItem,_that.itemId,_that.itemName,_that.price,_that.discount,_that.offerTag);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_treedetail', fromJson: intFromJson)  int idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson)  String treeName, @JsonKey(name: 'level', fromJson: intFromJson)  int level, @JsonKey(name: 'seq_no', fromJson: intFromJson)  int seqNo, @JsonKey(name: 'parent', fromJson: intFromJson)  int parent, @JsonKey(name: 'tree_path', fromJson: stringFromJson)  String treePath, @JsonKey(name: 'id_item', fromJson: intFromJson)  int idItem, @JsonKey(name: 'item_id', fromJson: stringFromJson)  String itemId, @JsonKey(name: 'item_name', fromJson: stringFromJson)  String itemName, @JsonKey(name: 'price', fromJson: doubleFromJson)  double price, @JsonKey(name: 'discount', fromJson: doubleFromJson)  double discount, @JsonKey(name: 'offer_tag', fromJson: stringFromJson)  String offerTag)?  $default,) {final _that = this;
switch (_that) {
case _TreeDetailItemModel() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath,_that.idItem,_that.itemId,_that.itemName,_that.price,_that.discount,_that.offerTag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TreeDetailItemModel extends TreeDetailItemModel {
  const _TreeDetailItemModel({@JsonKey(name: 'id_treedetail', fromJson: intFromJson) required this.idTreedetail, @JsonKey(name: 'tree_name', fromJson: stringFromJson) this.treeName = '', @JsonKey(name: 'level', fromJson: intFromJson) this.level = 0, @JsonKey(name: 'seq_no', fromJson: intFromJson) this.seqNo = 0, @JsonKey(name: 'parent', fromJson: intFromJson) this.parent = 0, @JsonKey(name: 'tree_path', fromJson: stringFromJson) this.treePath = '', @JsonKey(name: 'id_item', fromJson: intFromJson) this.idItem = 0, @JsonKey(name: 'item_id', fromJson: stringFromJson) this.itemId = '', @JsonKey(name: 'item_name', fromJson: stringFromJson) this.itemName = '', @JsonKey(name: 'price', fromJson: doubleFromJson) this.price = 0.0, @JsonKey(name: 'discount', fromJson: doubleFromJson) this.discount = 0.0, @JsonKey(name: 'offer_tag', fromJson: stringFromJson) this.offerTag = ''}): super._();
  factory _TreeDetailItemModel.fromJson(Map<String, dynamic> json) => _$TreeDetailItemModelFromJson(json);

@override@JsonKey(name: 'id_treedetail', fromJson: intFromJson) final  int idTreedetail;
@override@JsonKey(name: 'tree_name', fromJson: stringFromJson) final  String treeName;
@override@JsonKey(name: 'level', fromJson: intFromJson) final  int level;
@override@JsonKey(name: 'seq_no', fromJson: intFromJson) final  int seqNo;
@override@JsonKey(name: 'parent', fromJson: intFromJson) final  int parent;
@override@JsonKey(name: 'tree_path', fromJson: stringFromJson) final  String treePath;
@override@JsonKey(name: 'id_item', fromJson: intFromJson) final  int idItem;
@override@JsonKey(name: 'item_id', fromJson: stringFromJson) final  String itemId;
@override@JsonKey(name: 'item_name', fromJson: stringFromJson) final  String itemName;
@override@JsonKey(name: 'price', fromJson: doubleFromJson) final  double price;
@override@JsonKey(name: 'discount', fromJson: doubleFromJson) final  double discount;
@override@JsonKey(name: 'offer_tag', fromJson: stringFromJson) final  String offerTag;

/// Create a copy of TreeDetailItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeDetailItemModelCopyWith<_TreeDetailItemModel> get copyWith => __$TreeDetailItemModelCopyWithImpl<_TreeDetailItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TreeDetailItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeDetailItemModel&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.offerTag, offerTag) || other.offerTag == offerTag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath,idItem,itemId,itemName,price,discount,offerTag);

@override
String toString() {
  return 'TreeDetailItemModel(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath, idItem: $idItem, itemId: $itemId, itemName: $itemName, price: $price, discount: $discount, offerTag: $offerTag)';
}


}

/// @nodoc
abstract mixin class _$TreeDetailItemModelCopyWith<$Res> implements $TreeDetailItemModelCopyWith<$Res> {
  factory _$TreeDetailItemModelCopyWith(_TreeDetailItemModel value, $Res Function(_TreeDetailItemModel) _then) = __$TreeDetailItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_treedetail', fromJson: intFromJson) int idTreedetail,@JsonKey(name: 'tree_name', fromJson: stringFromJson) String treeName,@JsonKey(name: 'level', fromJson: intFromJson) int level,@JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,@JsonKey(name: 'parent', fromJson: intFromJson) int parent,@JsonKey(name: 'tree_path', fromJson: stringFromJson) String treePath,@JsonKey(name: 'id_item', fromJson: intFromJson) int idItem,@JsonKey(name: 'item_id', fromJson: stringFromJson) String itemId,@JsonKey(name: 'item_name', fromJson: stringFromJson) String itemName,@JsonKey(name: 'price', fromJson: doubleFromJson) double price,@JsonKey(name: 'discount', fromJson: doubleFromJson) double discount,@JsonKey(name: 'offer_tag', fromJson: stringFromJson) String offerTag
});




}
/// @nodoc
class __$TreeDetailItemModelCopyWithImpl<$Res>
    implements _$TreeDetailItemModelCopyWith<$Res> {
  __$TreeDetailItemModelCopyWithImpl(this._self, this._then);

  final _TreeDetailItemModel _self;
  final $Res Function(_TreeDetailItemModel) _then;

/// Create a copy of TreeDetailItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,Object? idItem = null,Object? itemId = null,Object? itemName = null,Object? price = null,Object? discount = null,Object? offerTag = null,}) {
  return _then(_TreeDetailItemModel(
idTreedetail: null == idTreedetail ? _self.idTreedetail : idTreedetail // ignore: cast_nullable_to_non_nullable
as int,treeName: null == treeName ? _self.treeName : treeName // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,seqNo: null == seqNo ? _self.seqNo : seqNo // ignore: cast_nullable_to_non_nullable
as int,parent: null == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as int,treePath: null == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String,idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,offerTag: null == offerTag ? _self.offerTag : offerTag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
