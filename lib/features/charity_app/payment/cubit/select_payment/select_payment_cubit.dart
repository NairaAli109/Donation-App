import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/payment/cubit/select_payment/select_payment_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/payment_option_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPaymentCubit extends Cubit<SelectPaymentStates> {
  SelectPaymentCubit() : super(SelectPaymentInitialState());

  static SelectPaymentCubit get(BuildContext context) =>
      BlocProvider.of(context);

  String? selectedMethod;
  changeSelectedMethod(String val, BuildContext context) {
    selectedMethod = val;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return  PaymentOptionBottomSheet(
          isCardPayment: val == "card" ? true : false
        );
      },
    );
    emit(ChangeSelectedMethodState());
  }
}
