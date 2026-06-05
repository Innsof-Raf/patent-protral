import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/lab/service/item_services.dart';
import 'package:patient_portal/resources/error_model.dart';

import '../../models/item_model/item_model.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc() : super(ItemsState.inoitial()) {
    on<GetItems>((event, emit) async {
      emit(state.copyWith(
        isItemsFetching: true,
        isItemsFetchingFailed: false,
        isItemsFetchingSuccess: false,
      ));
      final Either<ErrorModel, List<ItemModel>> getitemsOptions =
          await ItemServices.getItems(token: event.token);
      getitemsOptions.fold(
          (error) => emit(state.copyWith(
              isItemsFetching: false,
              isItemsFetchingFailed: true,
              error: error)), (items) {
        double cartTotal = 0;
        for (ItemModel item in items) {
          if (item.isCart) {
            cartTotal = cartTotal + item.itemPrice;
          }
        }
        return emit(state.copyWith(
            isItemsFetching: false,
            isItemsFetchingSuccess: true,
            cartTotal: cartTotal,
            cart: items.where((item) => item.isCart).toList(),
            items: items));
      });
    });
    on<UpdateItemCartSatus>((event, emit) async {
      emit(state.copyWith(
          isCartUpdatingFailed: false,
          isCartUpdatingSucees: false,
          cart: state.cart.map((item) {
            if (event.idItem == item.idItem) {
              return item.copyWith(isChangingCartStatus: true);
            } else {
              return item;
            }
          }).toList(),
          items: state.items.map((item) {
            if (event.idItem == item.idItem) {
              return item.copyWith(isChangingCartStatus: true);
            } else {
              return item;
            }
          }).toList()));
      final cartUpadtingOptions = await ItemServices.updateItemInCart(
          idUser: event.idUser, idItem: event.idItem, token: event.token);
      cartUpadtingOptions.fold(
          (error) => emit(state.copyWith(
              error: error,
              isCartUpdatingFailed: true,
              items: state.items.map((item) {
                if (event.idItem == item.idItem) {
                  return item.copyWith(isChangingCartStatus: false);
                } else {
                  return item;
                }
              }).toList())), (succes) {
        double cartTotal = state.cartTotal;
        List<ItemModel> cart = List.from(state.cart);
        if (cart.any((item) => item.idItem == event.idItem)) {
          final ItemModel item =
              cart.singleWhere((item) => item.idItem == event.idItem);
          cart.remove(item);
          cartTotal = cartTotal - item.itemPrice;
        } else {
          final ItemModel item =
              state.items.singleWhere((item) => item.idItem == event.idItem);
          cart.add(item);
          cartTotal = cartTotal + item.itemPrice;
        }

        return emit(state.copyWith(
            cartTotal: cartTotal,
            isCartUpdatingSucees: true,
            cart: cart.map((item) {
              if (event.idItem == item.idItem) {
                return item.copyWith(
                    isChangingCartStatus: false, isCart: !item.isCart);
              } else {
                return item;
              }
            }).toList(),
            items: state.items.map((item) {
              if (event.idItem == item.idItem) {
                return item.copyWith(
                    isChangingCartStatus: false, isCart: !item.isCart);
              } else {
                return item;
              }
            }).toList()));
      });
    });
  }
}
