part of 'items_bloc.dart';

@freezed
sealed class ItemsState with _$ItemsState {
  const factory ItemsState({
    required bool isItemsFetching,
    required bool isItemsFetchingFailed,
    required bool isItemsFetchingSuccess,
    required bool isCartUpdatingFailed,
    required bool isCartUpdatingSucees,
    required ErrorModel error,
    required double cartTotal,
    required List<ItemModel> items,
    required List<ItemModel> cart,
  }) = _ItemState;

  factory ItemsState.inoitial() => ItemsState(
    isItemsFetching: false,
    cartTotal: 0.0,
    isItemsFetchingFailed: false,
    isCartUpdatingFailed: false,
    isCartUpdatingSucees: false,
    isItemsFetchingSuccess: false,
    error: ErrorModel(message: ''),
    cart: [],
    items: [],
  );
}
