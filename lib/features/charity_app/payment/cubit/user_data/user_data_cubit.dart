import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/features/charity_app/payment/cubit/select_payment/select_payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/user_data/user_data_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/select_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class UserDataCubit extends Cubit<UserDataStates> {
  UserDataCubit() : super(UserDataInitialState());

  static UserDataCubit get(BuildContext context) => BlocProvider.of(context);

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
          create: (context) => getIt.get<SelectPaymentCubit>(),
          child: SelectPaymentScreen(),
        ),
        withNavBar: false,
      );
    }
    emit(saveUserDataSuccessState());
  }
}
