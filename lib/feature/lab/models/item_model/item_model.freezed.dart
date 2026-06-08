// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemModel {

@JsonKey(name: 'id_item') int get idItem;@JsonKey(name: 'item_name') String get itemNmae;@JsonKey(name: 'item_price') double get itemPrice;@JsonKey(name: 'item_img') String get itemImg;@JsonKey(name: 'item_shortdescr') String get itemShortDesc;@JsonKey(name: 'item_Type') String get itemType;@JsonKey(name: 'is_cart') bool get isCart; dynamic get isChangingCartStatus;
/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemModelCopyWith<ItemModel> get copyWith => _$ItemModelCopyWithImpl<ItemModel>(this as ItemModel, _$identity);

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemModel&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemNmae, itemNmae) || other.itemNmae == itemNmae)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemImg, itemImg) || other.itemImg == itemImg)&&(identical(other.itemShortDesc, itemShortDesc) || other.itemShortDesc == itemShortDesc)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.isCart, isCart) || other.isCart == isCart)&&const DeepCollectionEquality().equals(other.isChangingCartStatus, isChangingCartStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idItem,itemNmae,itemPrice,itemImg,itemShortDesc,itemType,isCart,const DeepCollectionEquality().hash(isChangingCartStatus));

@override
String toString() {
  return 'ItemModel(idItem: $idItem, itemNmae: $itemNmae, itemPrice: $itemPrice, itemImg: $itemImg, itemShortDesc: $itemShortDesc, itemType: $itemType, isCart: $isCart, isChangingCartStatus: $isChangingCartStatus)';
}


}

/// @nodoc
abstract mixin class $ItemModelCopyWith<$Res>  {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) _then) = _$ItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_item') int idItem,@JsonKey(name: 'item_name') String itemNmae,@JsonKey(name: 'item_price') double itemPrice,@JsonKey(name: 'item_img') String itemImg,@JsonKey(name: 'item_shortdescr') String itemShortDesc,@JsonKey(name: 'item_Type') String itemType,@JsonKey(name: 'is_cart') bool isCart, dynamic isChangingCartStatus
});




}
/// @nodoc
class _$ItemModelCopyWithImpl<$Res>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._self, this._then);

  final ItemModel _self;
  final $Res Function(ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idItem = null,Object? itemNmae = null,Object? itemPrice = null,Object? itemImg = null,Object? itemShortDesc = null,Object? itemType = null,Object? isCart = null,Object? isChangingCartStatus = freezed,}) {
  return _then(_self.copyWith(
idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,itemNmae: null == itemNmae ? _self.itemNmae : itemNmae // ignore: cast_nullable_to_non_nullable
as String,itemPrice: null == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double,itemImg: null == itemImg ? _self.itemImg : itemImg // ignore: cast_nullable_to_non_nullable
as String,itemShortDesc: null == itemShortDesc ? _self.itemShortDesc : itemShortDesc // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,isCart: null == isCart ? _self.isCart : isCart // ignore: cast_nullable_to_non_nullable
as bool,isChangingCartStatus: freezed == isChangingCartStatus ? _self.isChangingCartStatus : isChangingCartStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemModel].
extension ItemModelPatterns on ItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_item')  int idItem, @JsonKey(name: 'item_name')  String itemNmae, @JsonKey(name: 'item_price')  double itemPrice, @JsonKey(name: 'item_img')  String itemImg, @JsonKey(name: 'item_shortdescr')  String itemShortDesc, @JsonKey(name: 'item_Type')  String itemType, @JsonKey(name: 'is_cart')  bool isCart,  dynamic isChangingCartStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.idItem,_that.itemNmae,_that.itemPrice,_that.itemImg,_that.itemShortDesc,_that.itemType,_that.isCart,_that.isChangingCartStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_item')  int idItem, @JsonKey(name: 'item_name')  String itemNmae, @JsonKey(name: 'item_price')  double itemPrice, @JsonKey(name: 'item_img')  String itemImg, @JsonKey(name: 'item_shortdescr')  String itemShortDesc, @JsonKey(name: 'item_Type')  String itemType, @JsonKey(name: 'is_cart')  bool isCart,  dynamic isChangingCartStatus)  $default,) {final _that = this;
switch (_that) {
case _ItemModel():
return $default(_that.idItem,_that.itemNmae,_that.itemPrice,_that.itemImg,_that.itemShortDesc,_that.itemType,_that.isCart,_that.isChangingCartStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_item')  int idItem, @JsonKey(name: 'item_name')  String itemNmae, @JsonKey(name: 'item_price')  double itemPrice, @JsonKey(name: 'item_img')  String itemImg, @JsonKey(name: 'item_shortdescr')  String itemShortDesc, @JsonKey(name: 'item_Type')  String itemType, @JsonKey(name: 'is_cart')  bool isCart,  dynamic isChangingCartStatus)?  $default,) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.idItem,_that.itemNmae,_that.itemPrice,_that.itemImg,_that.itemShortDesc,_that.itemType,_that.isCart,_that.isChangingCartStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemModel implements ItemModel {
  const _ItemModel({@JsonKey(name: 'id_item') required this.idItem, @JsonKey(name: 'item_name') required this.itemNmae, @JsonKey(name: 'item_price') required this.itemPrice, @JsonKey(name: 'item_img') required this.itemImg, @JsonKey(name: 'item_shortdescr') required this.itemShortDesc, @JsonKey(name: 'item_Type') required this.itemType, @JsonKey(name: 'is_cart') required this.isCart, this.isChangingCartStatus = false});
  factory _ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

@override@JsonKey(name: 'id_item') final  int idItem;
@override@JsonKey(name: 'item_name') final  String itemNmae;
@override@JsonKey(name: 'item_price') final  double itemPrice;
@override@JsonKey(name: 'item_img') final  String itemImg;
@override@JsonKey(name: 'item_shortdescr') final  String itemShortDesc;
@override@JsonKey(name: 'item_Type') final  String itemType;
@override@JsonKey(name: 'is_cart') final  bool isCart;
@override@JsonKey() final  dynamic isChangingCartStatus;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemModelCopyWith<_ItemModel> get copyWith => __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemModel&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.itemNmae, itemNmae) || other.itemNmae == itemNmae)&&(identical(other.itemPrice, itemPrice) || other.itemPrice == itemPrice)&&(identical(other.itemImg, itemImg) || other.itemImg == itemImg)&&(identical(other.itemShortDesc, itemShortDesc) || other.itemShortDesc == itemShortDesc)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.isCart, isCart) || other.isCart == isCart)&&const DeepCollectionEquality().equals(other.isChangingCartStatus, isChangingCartStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idItem,itemNmae,itemPrice,itemImg,itemShortDesc,itemType,isCart,const DeepCollectionEquality().hash(isChangingCartStatus));

@override
String toString() {
  return 'ItemModel(idItem: $idItem, itemNmae: $itemNmae, itemPrice: $itemPrice, itemImg: $itemImg, itemShortDesc: $itemShortDesc, itemType: $itemType, isCart: $isCart, isChangingCartStatus: $isChangingCartStatus)';
}


}

/// @nodoc
abstract mixin class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(_ItemModel value, $Res Function(_ItemModel) _then) = __$ItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_item') int idItem,@JsonKey(name: 'item_name') String itemNmae,@JsonKey(name: 'item_price') double itemPrice,@JsonKey(name: 'item_img') String itemImg,@JsonKey(name: 'item_shortdescr') String itemShortDesc,@JsonKey(name: 'item_Type') String itemType,@JsonKey(name: 'is_cart') bool isCart, dynamic isChangingCartStatus
});




}
/// @nodoc
class __$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(this._self, this._then);

  final _ItemModel _self;
  final $Res Function(_ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idItem = null,Object? itemNmae = null,Object? itemPrice = null,Object? itemImg = null,Object? itemShortDesc = null,Object? itemType = null,Object? isCart = null,Object? isChangingCartStatus = freezed,}) {
  return _then(_ItemModel(
idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,itemNmae: null == itemNmae ? _self.itemNmae : itemNmae // ignore: cast_nullable_to_non_nullable
as String,itemPrice: null == itemPrice ? _self.itemPrice : itemPrice // ignore: cast_nullable_to_non_nullable
as double,itemImg: null == itemImg ? _self.itemImg : itemImg // ignore: cast_nullable_to_non_nullable
as String,itemShortDesc: null == itemShortDesc ? _self.itemShortDesc : itemShortDesc // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,isCart: null == isCart ? _self.isCart : isCart // ignore: cast_nullable_to_non_nullable
as bool,isChangingCartStatus: freezed == isChangingCartStatus ? _self.isChangingCartStatus : isChangingCartStatus // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
