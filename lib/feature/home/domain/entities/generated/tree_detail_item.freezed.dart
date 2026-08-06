// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tree_detail_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TreeDetailItem {

 int get idTreedetail; String get treeName; int get level; int get seqNo; int get parent; String get treePath; int get idItem; String get itemId; String get itemName; double get price; double get discount; String get offerTag;
/// Create a copy of TreeDetailItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TreeDetailItemCopyWith<TreeDetailItem> get copyWith => _$TreeDetailItemCopyWithImpl<TreeDetailItem>(this as TreeDetailItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TreeDetailItem&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.offerTag, offerTag) || other.offerTag == offerTag));
}


@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath,idItem,itemId,itemName,price,discount,offerTag);

@override
String toString() {
  return 'TreeDetailItem(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath, idItem: $idItem, itemId: $itemId, itemName: $itemName, price: $price, discount: $discount, offerTag: $offerTag)';
}


}

/// @nodoc
abstract mixin class $TreeDetailItemCopyWith<$Res>  {
  factory $TreeDetailItemCopyWith(TreeDetailItem value, $Res Function(TreeDetailItem) _then) = _$TreeDetailItemCopyWithImpl;
@useResult
$Res call({
 int idTreedetail, String treeName, int level, int seqNo, int parent, String treePath, int idItem, String itemId, String itemName, double price, double discount, String offerTag
});




}
/// @nodoc
class _$TreeDetailItemCopyWithImpl<$Res>
    implements $TreeDetailItemCopyWith<$Res> {
  _$TreeDetailItemCopyWithImpl(this._self, this._then);

  final TreeDetailItem _self;
  final $Res Function(TreeDetailItem) _then;

/// Create a copy of TreeDetailItem
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


/// Adds pattern-matching-related methods to [TreeDetailItem].
extension TreeDetailItemPatterns on TreeDetailItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TreeDetailItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TreeDetailItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TreeDetailItem value)  $default,){
final _that = this;
switch (_that) {
case _TreeDetailItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TreeDetailItem value)?  $default,){
final _that = this;
switch (_that) {
case _TreeDetailItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath,  int idItem,  String itemId,  String itemName,  double price,  double discount,  String offerTag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TreeDetailItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath,  int idItem,  String itemId,  String itemName,  double price,  double discount,  String offerTag)  $default,) {final _that = this;
switch (_that) {
case _TreeDetailItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int idTreedetail,  String treeName,  int level,  int seqNo,  int parent,  String treePath,  int idItem,  String itemId,  String itemName,  double price,  double discount,  String offerTag)?  $default,) {final _that = this;
switch (_that) {
case _TreeDetailItem() when $default != null:
return $default(_that.idTreedetail,_that.treeName,_that.level,_that.seqNo,_that.parent,_that.treePath,_that.idItem,_that.itemId,_that.itemName,_that.price,_that.discount,_that.offerTag);case _:
  return null;

}
}

}

/// @nodoc


class _TreeDetailItem implements TreeDetailItem {
  const _TreeDetailItem({required this.idTreedetail, required this.treeName, required this.level, required this.seqNo, required this.parent, required this.treePath, required this.idItem, required this.itemId, required this.itemName, required this.price, required this.discount, required this.offerTag});
  

@override final  int idTreedetail;
@override final  String treeName;
@override final  int level;
@override final  int seqNo;
@override final  int parent;
@override final  String treePath;
@override final  int idItem;
@override final  String itemId;
@override final  String itemName;
@override final  double price;
@override final  double discount;
@override final  String offerTag;

/// Create a copy of TreeDetailItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TreeDetailItemCopyWith<_TreeDetailItem> get copyWith => __$TreeDetailItemCopyWithImpl<_TreeDetailItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TreeDetailItem&&(identical(other.idTreedetail, idTreedetail) || other.idTreedetail == idTreedetail)&&(identical(other.treeName, treeName) || other.treeName == treeName)&&(identical(other.level, level) || other.level == level)&&(identical(other.seqNo, seqNo) || other.seqNo == seqNo)&&(identical(other.parent, parent) || other.parent == parent)&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.price, price) || other.price == price)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.offerTag, offerTag) || other.offerTag == offerTag));
}


@override
int get hashCode => Object.hash(runtimeType,idTreedetail,treeName,level,seqNo,parent,treePath,idItem,itemId,itemName,price,discount,offerTag);

@override
String toString() {
  return 'TreeDetailItem(idTreedetail: $idTreedetail, treeName: $treeName, level: $level, seqNo: $seqNo, parent: $parent, treePath: $treePath, idItem: $idItem, itemId: $itemId, itemName: $itemName, price: $price, discount: $discount, offerTag: $offerTag)';
}


}

/// @nodoc
abstract mixin class _$TreeDetailItemCopyWith<$Res> implements $TreeDetailItemCopyWith<$Res> {
  factory _$TreeDetailItemCopyWith(_TreeDetailItem value, $Res Function(_TreeDetailItem) _then) = __$TreeDetailItemCopyWithImpl;
@override @useResult
$Res call({
 int idTreedetail, String treeName, int level, int seqNo, int parent, String treePath, int idItem, String itemId, String itemName, double price, double discount, String offerTag
});




}
/// @nodoc
class __$TreeDetailItemCopyWithImpl<$Res>
    implements _$TreeDetailItemCopyWith<$Res> {
  __$TreeDetailItemCopyWithImpl(this._self, this._then);

  final _TreeDetailItem _self;
  final $Res Function(_TreeDetailItem) _then;

/// Create a copy of TreeDetailItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idTreedetail = null,Object? treeName = null,Object? level = null,Object? seqNo = null,Object? parent = null,Object? treePath = null,Object? idItem = null,Object? itemId = null,Object? itemName = null,Object? price = null,Object? discount = null,Object? offerTag = null,}) {
  return _then(_TreeDetailItem(
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
