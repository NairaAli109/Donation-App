import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/select_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentStates>(
      builder: (context, state) {
        var cubit = PaymentCubit.get(context);
        return Container(
          height: 100,
          width: double.infinity,
          color: AppColors.grey7,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16,
              end: 16,
              top: 16,
              bottom: 30,
            ),
            child: CustomButton(
              onTap: () {
                cubit.saveUserData(context);
              },
              radius: 12,
              widget: CustomText(
                text: "استمرار",
                color: AppColors.backgroundColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              fillColor: AppColors.primaryColorForCharities,
              borderColor: Colors.transparent,
            ),
          ),
        );
      },
    );
  }
}
