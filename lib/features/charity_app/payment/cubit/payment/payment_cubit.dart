import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/payment/cubit/card_option/card_option_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/payment_done_screen.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/select_payment_screen.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/payment_option_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(PaymentInitialState());

  static PaymentCubit get(BuildContext context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final phoneFieldKey = GlobalKey<FormFieldState>();
  String? phoneNumber;
  PhoneNumber selectedCountry = PhoneNumber(isoCode: "SA");

  saveUserData(BuildContext context) {
    bool isFormValid = formKey.currentState!.validate();

    if (isFormValid) {
      print("mobile:: $phoneNumber");
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: BlocProvider(
          create: (context) => getIt.get<PaymentCubit>(),
          child: SelectPaymentScreen(),
        ),
        withNavBar: false,
      );
    }
    emit(saveUserDataSuccessState());
  }

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
        return BlocProvider(
          create: (context) => getIt.get<CardOptionCubit>(),
          child: PaymentOptionBottomSheet(
            isCardPayment: val == "card" ? true : false,
            onTap: () {
              val == "card"
                  ? PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: PaymentDoneScreen(),
                    withNavBar: false,
                  )
                  : null;
            },
          ),
        );
      },
    );
    emit(ChangeSelectedMethodState());
  }
}
