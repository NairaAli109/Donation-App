import 'package:donation_app/features/charity_app/payment/cubit/payment_option/payment_option_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentOptionCubit extends Cubit<PaymentOptionStates> {
  PaymentOptionCubit() : super(PaymentOptionInitialState());

  static PaymentOptionCubit get(BuildContext context) => BlocProvider.of(context);
}
