import 'package:donation_app/features/charity_app/payment/cubit/card_option/card_option_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardOptionCubit extends Cubit<CardOptionStates> {
  CardOptionCubit() : super(CardOptionInitialState());

  static CardOptionCubit get(BuildContext context) => BlocProvider.of(context);
}
