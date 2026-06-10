import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/lab/domain/entities/item_model.dart';
import 'package:patient_portal/feature/lab/domain/usecases/get_items_usecase.dart';
import 'package:patient_portal/feature/lab/domain/usecases/params/lab_params.dart';
import 'package:patient_portal/feature/lab/domain/usecases/update_item_in_cart_usecase.dart';
import 'package:patient_portal/core/resources/error_model.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'generated/items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final GetItemsUseCase getItemsUseCase;
  final UpdateItemInCartUseCase updateItemInCartUseCase;

  ItemsBloc({
    required this.getItemsUseCase,
    required this.updateItemInCartUseCase,
  }) : super(ItemsState.inoitial()) {
    on<GetItems>((event, emit) async {
      emit(
        state.copyWith(
          isItemsFetching: true,
          isItemsFetchingFailed: false,
          isItemsFetchingSuccess: false,
        ),
      );
      final result = await getItemsUseCase(
        LabParams.getItems(token: event.token),
      );
      result.fold(
        (failure) => emit(
          state.copyWith(
            isItemsFetching: false,
            isItemsFetchingFailed: true,
            error: ErrorModel(message: failure.message),
          ),
        ),
        (items) {
          double cartTotal = 0;
          for (ItemModel item in items) {
            if (item.isCart) {
              cartTotal = cartTotal + item.itemPrice;
            }
          }
          return emit(
            state.copyWith(
              isItemsFetching: false,
              isItemsFetchingSuccess: true,
              cartTotal: cartTotal,
              cart: items.where((item) => item.isCart).toList(),
              items: items,
            ),
          );
        },
      );
    });
    on<UpdateItemCartSatus>((event, emit) async {
      emit(
        state.copyWith(
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
          }).toList(),
        ),
      );
      final result = await updateItemInCartUseCase(
        LabParams.updateItemInCart(
          idUser: event.idUser,
          idItem: event.idItem,
          token: event.token,
        ),
      );
      result.fold(
        (failure) => emit(
          state.copyWith(
            error: ErrorModel(message: failure.message),
            isCartUpdatingFailed: true,
            items: state.items.map((item) {
              if (event.idItem == item.idItem) {
                return item.copyWith(isChangingCartStatus: false);
              } else {
                return item;
              }
            }).toList(),
          ),
        ),
        (succes) {
          double cartTotal = state.cartTotal;
          List<ItemModel> cart = List.from(state.cart);
          if (cart.any((item) => item.idItem == event.idItem)) {
            final ItemModel item = cart.singleWhere(
              (item) => item.idItem == event.idItem,
            );
            cart.remove(item);
            cartTotal = cartTotal - item.itemPrice;
          } else {
            final ItemModel item = state.items.singleWhere(
              (item) => item.idItem == event.idItem,
            );
            cart.add(item);
            cartTotal = cartTotal + item.itemPrice;
          }

          return emit(
            state.copyWith(
              cartTotal: cartTotal,
              isCartUpdatingSucees: true,
              cart: cart.map((item) {
                if (event.idItem == item.idItem) {
                  return item.copyWith(
                    isChangingCartStatus: false,
                    isCart: !item.isCart,
                  );
                } else {
                  return item;
                }
              }).toList(),
              items: state.items.map((item) {
                if (event.idItem == item.idItem) {
                  return item.copyWith(
                    isChangingCartStatus: false,
                    isCart: !item.isCart,
                  );
                } else {
                  return item;
                }
              }).toList(),
            ),
          );
        },
      );
    });
  }
}
