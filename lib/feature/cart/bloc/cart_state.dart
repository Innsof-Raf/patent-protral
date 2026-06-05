part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<CartItemModel> cartItems,
  }) = _CartState;
  factory CartState.initial() => const CartState(cartItems: []);
}
