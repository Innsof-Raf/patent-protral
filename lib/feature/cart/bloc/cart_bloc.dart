import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/feature/cart/models/cart_item_model.dart/cart_item_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<CartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
