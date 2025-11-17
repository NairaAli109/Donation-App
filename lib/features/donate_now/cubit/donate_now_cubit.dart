import 'package:donation_app/features/donate_now/cubit/donate_now_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateNowCubit extends Cubit<DonateNowStates> {
  DonateNowCubit() : super(DonateNowInitialState());

  static DonateNowCubit get(BuildContext context) => BlocProvider.of(context);

  double? selectedAmount;
  bool isSelectedAmount = false;
  final List<double> amounts = [300, 200, 100, 50];
  changeSelectedDonationAmount(double amount) {
    if (selectedAmount == amount) {
      selectedAmount = null;
      isSelectedAmount = false;
    } else {
      selectedAmount = amount;
      isSelectedAmount = true;
    }

    print("selectedAmount: $selectedAmount");
    emit(ChangeSelectedDonationAmountState());
  }


  final formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  donationAmountValidation() {
    if (formKey.currentState!.validate() || selectedAmount != null) {
      donate();
    }
  }

  donate() {}
}
