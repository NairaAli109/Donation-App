import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/custom_input_widget_package/custom_input_widget_package.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/custom_input_widget_package/custom_selector_config.dart';
import 'package:flutter/material.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = PaymentCubit.get(context);

    return  CustomInternationalPhoneNumberInput(
      key: cubit.phoneFieldKey,
      textFieldController: cubit.phoneController,

      textAlign: TextAlign.right,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.almaraiFont,
        color: AppColors.black,
      ),

      validator: (value) {
        if (cubit.phoneController.text.trim().isEmpty) {
          return "يجب ادخال رقم الهاتف";
        }
        return null;
      },

      onInputChanged: (number) {
        cubit.phoneNumber = number.phoneNumber;
        cubit.selectedCountry = number;
        print(number);
      },

      inputDecoration: InputDecoration(
        hintText: "000 0000 000",
        hintStyle: const TextStyle(
          color: AppColors.grey9,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: AppStrings.almaraiFont,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.grey2, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
          color: AppColors.primaryColorForCharities,
          width: 1,
        ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
      ),

      spaceBetweenSelectorAndTextField: 16,
      selectorConfig: CustomSelectorConfig(
        selectorType: CustomPhoneInputSelectorType.DROPDOWN,
        trailingSpace: false,
        leadingPadding: 12,
        showFlags: true,
        setSelectorButtonAsPrefixIcon: true
      ),
      selectorTextStyle: const TextStyle(
        color: Colors.transparent,
        fontSize: 0,
      ),
      initialValue: cubit.selectedCountry,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      formatInput: true,
    );
  }
}
