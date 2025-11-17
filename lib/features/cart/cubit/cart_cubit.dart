import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_states.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(CartInitialState());

  static CartCubit get(BuildContext context) => BlocProvider.of(context);

  int quantity = 2;
  final int minQuantity = 1;
  final int maxQuantity = 99;

  void increment() {
    if (quantity < maxQuantity) {
      quantity++;
      emit(CartQuantityChangedState());
    }
  }

  void decrement() {
    if (quantity > minQuantity) {
      quantity--;
      emit(CartQuantityChangedState());
    }
  }

  deleteCartItem() {}

  donate() {}
}
