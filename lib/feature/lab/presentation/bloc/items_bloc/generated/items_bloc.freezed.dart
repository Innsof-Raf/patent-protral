// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsEvent()';
}


}

/// @nodoc
class $ItemsEventCopyWith<$Res>  {
$ItemsEventCopyWith(ItemsEvent _, $Res Function(ItemsEvent) __);
}


/// Adds pattern-matching-related methods to [ItemsEvent].
extension ItemsEventPatterns on ItemsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetItems value)?  getItems,TResult Function( UpdateItemCartSatus value)?  updateItemCartSatus,TResult Function( ClearCart value)?  clearCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that);case UpdateItemCartSatus() when updateItemCartSatus != null:
return updateItemCartSatus(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetItems value)  getItems,required TResult Function( UpdateItemCartSatus value)  updateItemCartSatus,required TResult Function( ClearCart value)  clearCart,}){
final _that = this;
switch (_that) {
case GetItems():
return getItems(_that);case UpdateItemCartSatus():
return updateItemCartSatus(_that);case ClearCart():
return clearCart(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetItems value)?  getItems,TResult? Function( UpdateItemCartSatus value)?  updateItemCartSatus,TResult? Function( ClearCart value)?  clearCart,}){
final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that);case UpdateItemCartSatus() when updateItemCartSatus != null:
return updateItemCartSatus(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String token)?  getItems,TResult Function( int idItem,  int idUser,  String token,  Item? item)?  updateItemCartSatus,TResult Function()?  clearCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that.token);case UpdateItemCartSatus() when updateItemCartSatus != null:
return updateItemCartSatus(_that.idItem,_that.idUser,_that.token,_that.item);case ClearCart() when clearCart != null:
return clearCart();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String token)  getItems,required TResult Function( int idItem,  int idUser,  String token,  Item? item)  updateItemCartSatus,required TResult Function()  clearCart,}) {final _that = this;
switch (_that) {
case GetItems():
return getItems(_that.token);case UpdateItemCartSatus():
return updateItemCartSatus(_that.idItem,_that.idUser,_that.token,_that.item);case ClearCart():
return clearCart();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String token)?  getItems,TResult? Function( int idItem,  int idUser,  String token,  Item? item)?  updateItemCartSatus,TResult? Function()?  clearCart,}) {final _that = this;
switch (_that) {
case GetItems() when getItems != null:
return getItems(_that.token);case UpdateItemCartSatus() when updateItemCartSatus != null:
return updateItemCartSatus(_that.idItem,_that.idUser,_that.token,_that.item);case ClearCart() when clearCart != null:
return clearCart();case _:
  return null;

}
}

}

/// @nodoc


class GetItems implements ItemsEvent {
  const GetItems({required this.token});
  

 final  String token;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetItemsCopyWith<GetItems> get copyWith => _$GetItemsCopyWithImpl<GetItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetItems&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode => Object.hash(runtimeType,token);

@override
String toString() {
  return 'ItemsEvent.getItems(token: $token)';
}


}

/// @nodoc
abstract mixin class $GetItemsCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory $GetItemsCopyWith(GetItems value, $Res Function(GetItems) _then) = _$GetItemsCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$GetItemsCopyWithImpl<$Res>
    implements $GetItemsCopyWith<$Res> {
  _$GetItemsCopyWithImpl(this._self, this._then);

  final GetItems _self;
  final $Res Function(GetItems) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(GetItems(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateItemCartSatus implements ItemsEvent {
  const UpdateItemCartSatus({required this.idItem, required this.idUser, required this.token, this.item});
  

 final  int idItem;
 final  int idUser;
 final  String token;
 final  Item? item;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateItemCartSatusCopyWith<UpdateItemCartSatus> get copyWith => _$UpdateItemCartSatusCopyWithImpl<UpdateItemCartSatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateItemCartSatus&&(identical(other.idItem, idItem) || other.idItem == idItem)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.token, token) || other.token == token)&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,idItem,idUser,token,item);

@override
String toString() {
  return 'ItemsEvent.updateItemCartSatus(idItem: $idItem, idUser: $idUser, token: $token, item: $item)';
}


}

/// @nodoc
abstract mixin class $UpdateItemCartSatusCopyWith<$Res> implements $ItemsEventCopyWith<$Res> {
  factory $UpdateItemCartSatusCopyWith(UpdateItemCartSatus value, $Res Function(UpdateItemCartSatus) _then) = _$UpdateItemCartSatusCopyWithImpl;
@useResult
$Res call({
 int idItem, int idUser, String token, Item? item
});


$ItemCopyWith<$Res>? get item;

}
/// @nodoc
class _$UpdateItemCartSatusCopyWithImpl<$Res>
    implements $UpdateItemCartSatusCopyWith<$Res> {
  _$UpdateItemCartSatusCopyWithImpl(this._self, this._then);

  final UpdateItemCartSatus _self;
  final $Res Function(UpdateItemCartSatus) _then;

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idItem = null,Object? idUser = null,Object? token = null,Object? item = freezed,}) {
  return _then(UpdateItemCartSatus(
idItem: null == idItem ? _self.idItem : idItem // ignore: cast_nullable_to_non_nullable
as int,idUser: null == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Item?,
  ));
}

/// Create a copy of ItemsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

/// @nodoc


class ClearCart implements ItemsEvent {
  const ClearCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemsEvent.clearCart()';
}


}




/// @nodoc
mixin _$ItemsState {

 bool get isItemsFetching; bool get isItemsFetchingFailed; bool get isItemsFetchingSuccess; bool get isCartUpdatingFailed; bool get isCartUpdatingSucees; ErrorModel get error; double get cartTotal; List<Item> get items; List<Item> get cart;
/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsStateCopyWith<ItemsState> get copyWith => _$ItemsStateCopyWithImpl<ItemsState>(this as ItemsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemsState&&(identical(other.isItemsFetching, isItemsFetching) || other.isItemsFetching == isItemsFetching)&&(identical(other.isItemsFetchingFailed, isItemsFetchingFailed) || other.isItemsFetchingFailed == isItemsFetchingFailed)&&(identical(other.isItemsFetchingSuccess, isItemsFetchingSuccess) || other.isItemsFetchingSuccess == isItemsFetchingSuccess)&&(identical(other.isCartUpdatingFailed, isCartUpdatingFailed) || other.isCartUpdatingFailed == isCartUpdatingFailed)&&(identical(other.isCartUpdatingSucees, isCartUpdatingSucees) || other.isCartUpdatingSucees == isCartUpdatingSucees)&&(identical(other.error, error) || other.error == error)&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.cart, cart));
}


@override
int get hashCode => Object.hash(runtimeType,isItemsFetching,isItemsFetchingFailed,isItemsFetchingSuccess,isCartUpdatingFailed,isCartUpdatingSucees,error,cartTotal,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(cart));

@override
String toString() {
  return 'ItemsState(isItemsFetching: $isItemsFetching, isItemsFetchingFailed: $isItemsFetchingFailed, isItemsFetchingSuccess: $isItemsFetchingSuccess, isCartUpdatingFailed: $isCartUpdatingFailed, isCartUpdatingSucees: $isCartUpdatingSucees, error: $error, cartTotal: $cartTotal, items: $items, cart: $cart)';
}


}

/// @nodoc
abstract mixin class $ItemsStateCopyWith<$Res>  {
  factory $ItemsStateCopyWith(ItemsState value, $Res Function(ItemsState) _then) = _$ItemsStateCopyWithImpl;
@useResult
$Res call({
 bool isItemsFetching, bool isItemsFetchingFailed, bool isItemsFetchingSuccess, bool isCartUpdatingFailed, bool isCartUpdatingSucees, ErrorModel error, double cartTotal, List<Item> items, List<Item> cart
});


$ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class _$ItemsStateCopyWithImpl<$Res>
    implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._self, this._then);

  final ItemsState _self;
  final $Res Function(ItemsState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isItemsFetching = null,Object? isItemsFetchingFailed = null,Object? isItemsFetchingSuccess = null,Object? isCartUpdatingFailed = null,Object? isCartUpdatingSucees = null,Object? error = null,Object? cartTotal = null,Object? items = null,Object? cart = null,}) {
  return _then(_self.copyWith(
isItemsFetching: null == isItemsFetching ? _self.isItemsFetching : isItemsFetching // ignore: cast_nullable_to_non_nullable
as bool,isItemsFetchingFailed: null == isItemsFetchingFailed ? _self.isItemsFetchingFailed : isItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isItemsFetchingSuccess: null == isItemsFetchingSuccess ? _self.isItemsFetchingSuccess : isItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCartUpdatingFailed: null == isCartUpdatingFailed ? _self.isCartUpdatingFailed : isCartUpdatingFailed // ignore: cast_nullable_to_non_nullable
as bool,isCartUpdatingSucees: null == isCartUpdatingSucees ? _self.isCartUpdatingSucees : isCartUpdatingSucees // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,cartTotal: null == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as double,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,cart: null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as List<Item>,
  ));
}
/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemsState].
extension ItemsStatePatterns on ItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemState value)  $default,){
final _that = this;
switch (_that) {
case _ItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemState value)?  $default,){
final _that = this;
switch (_that) {
case _ItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isItemsFetching,  bool isItemsFetchingFailed,  bool isItemsFetchingSuccess,  bool isCartUpdatingFailed,  bool isCartUpdatingSucees,  ErrorModel error,  double cartTotal,  List<Item> items,  List<Item> cart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemState() when $default != null:
return $default(_that.isItemsFetching,_that.isItemsFetchingFailed,_that.isItemsFetchingSuccess,_that.isCartUpdatingFailed,_that.isCartUpdatingSucees,_that.error,_that.cartTotal,_that.items,_that.cart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isItemsFetching,  bool isItemsFetchingFailed,  bool isItemsFetchingSuccess,  bool isCartUpdatingFailed,  bool isCartUpdatingSucees,  ErrorModel error,  double cartTotal,  List<Item> items,  List<Item> cart)  $default,) {final _that = this;
switch (_that) {
case _ItemState():
return $default(_that.isItemsFetching,_that.isItemsFetchingFailed,_that.isItemsFetchingSuccess,_that.isCartUpdatingFailed,_that.isCartUpdatingSucees,_that.error,_that.cartTotal,_that.items,_that.cart);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isItemsFetching,  bool isItemsFetchingFailed,  bool isItemsFetchingSuccess,  bool isCartUpdatingFailed,  bool isCartUpdatingSucees,  ErrorModel error,  double cartTotal,  List<Item> items,  List<Item> cart)?  $default,) {final _that = this;
switch (_that) {
case _ItemState() when $default != null:
return $default(_that.isItemsFetching,_that.isItemsFetchingFailed,_that.isItemsFetchingSuccess,_that.isCartUpdatingFailed,_that.isCartUpdatingSucees,_that.error,_that.cartTotal,_that.items,_that.cart);case _:
  return null;

}
}

}

/// @nodoc


class _ItemState implements ItemsState {
  const _ItemState({required this.isItemsFetching, required this.isItemsFetchingFailed, required this.isItemsFetchingSuccess, required this.isCartUpdatingFailed, required this.isCartUpdatingSucees, required this.error, required this.cartTotal, required final  List<Item> items, required final  List<Item> cart}): _items = items,_cart = cart;
  

@override final  bool isItemsFetching;
@override final  bool isItemsFetchingFailed;
@override final  bool isItemsFetchingSuccess;
@override final  bool isCartUpdatingFailed;
@override final  bool isCartUpdatingSucees;
@override final  ErrorModel error;
@override final  double cartTotal;
 final  List<Item> _items;
@override List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<Item> _cart;
@override List<Item> get cart {
  if (_cart is EqualUnmodifiableListView) return _cart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cart);
}


/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemStateCopyWith<_ItemState> get copyWith => __$ItemStateCopyWithImpl<_ItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemState&&(identical(other.isItemsFetching, isItemsFetching) || other.isItemsFetching == isItemsFetching)&&(identical(other.isItemsFetchingFailed, isItemsFetchingFailed) || other.isItemsFetchingFailed == isItemsFetchingFailed)&&(identical(other.isItemsFetchingSuccess, isItemsFetchingSuccess) || other.isItemsFetchingSuccess == isItemsFetchingSuccess)&&(identical(other.isCartUpdatingFailed, isCartUpdatingFailed) || other.isCartUpdatingFailed == isCartUpdatingFailed)&&(identical(other.isCartUpdatingSucees, isCartUpdatingSucees) || other.isCartUpdatingSucees == isCartUpdatingSucees)&&(identical(other.error, error) || other.error == error)&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._cart, _cart));
}


@override
int get hashCode => Object.hash(runtimeType,isItemsFetching,isItemsFetchingFailed,isItemsFetchingSuccess,isCartUpdatingFailed,isCartUpdatingSucees,error,cartTotal,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_cart));

@override
String toString() {
  return 'ItemsState(isItemsFetching: $isItemsFetching, isItemsFetchingFailed: $isItemsFetchingFailed, isItemsFetchingSuccess: $isItemsFetchingSuccess, isCartUpdatingFailed: $isCartUpdatingFailed, isCartUpdatingSucees: $isCartUpdatingSucees, error: $error, cartTotal: $cartTotal, items: $items, cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$ItemStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemStateCopyWith(_ItemState value, $Res Function(_ItemState) _then) = __$ItemStateCopyWithImpl;
@override @useResult
$Res call({
 bool isItemsFetching, bool isItemsFetchingFailed, bool isItemsFetchingSuccess, bool isCartUpdatingFailed, bool isCartUpdatingSucees, ErrorModel error, double cartTotal, List<Item> items, List<Item> cart
});


@override $ErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$ItemStateCopyWithImpl<$Res>
    implements _$ItemStateCopyWith<$Res> {
  __$ItemStateCopyWithImpl(this._self, this._then);

  final _ItemState _self;
  final $Res Function(_ItemState) _then;

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isItemsFetching = null,Object? isItemsFetchingFailed = null,Object? isItemsFetchingSuccess = null,Object? isCartUpdatingFailed = null,Object? isCartUpdatingSucees = null,Object? error = null,Object? cartTotal = null,Object? items = null,Object? cart = null,}) {
  return _then(_ItemState(
isItemsFetching: null == isItemsFetching ? _self.isItemsFetching : isItemsFetching // ignore: cast_nullable_to_non_nullable
as bool,isItemsFetchingFailed: null == isItemsFetchingFailed ? _self.isItemsFetchingFailed : isItemsFetchingFailed // ignore: cast_nullable_to_non_nullable
as bool,isItemsFetchingSuccess: null == isItemsFetchingSuccess ? _self.isItemsFetchingSuccess : isItemsFetchingSuccess // ignore: cast_nullable_to_non_nullable
as bool,isCartUpdatingFailed: null == isCartUpdatingFailed ? _self.isCartUpdatingFailed : isCartUpdatingFailed // ignore: cast_nullable_to_non_nullable
as bool,isCartUpdatingSucees: null == isCartUpdatingSucees ? _self.isCartUpdatingSucees : isCartUpdatingSucees // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorModel,cartTotal: null == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as double,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,cart: null == cart ? _self._cart : cart // ignore: cast_nullable_to_non_nullable
as List<Item>,
  ));
}

/// Create a copy of ItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorModelCopyWith<$Res> get error {
  
  return $ErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
