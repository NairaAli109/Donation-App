import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/payment_option.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPaymentScreen extends StatelessWidget {
  const SelectPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: CustomText(
          text: "أختر وسيلة الدفع",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.darkGrey,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 48, start: 16, end: 16),
          child: BlocBuilder<PaymentCubit, PaymentStates>(
            builder: (context, state) {
              var cubit = PaymentCubit.get(context);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "اختر طريقة الدفع",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grey8,
                  ),
                  VerticalSpace(height: 24),
                  PaymentOption(
                    label: 'كارت',
                    value: 'card',
                    selectedMethod: cubit.selectedMethod,
                    onChanged: (val) => cubit.changeSelectedMethod(val, context),
                    cardIconPath: Assets.iconsCardPaymentIcon,
                  ),
                  VerticalSpace(height: 24),
                  PaymentOption(
                    label: 'جيت واى',
                    value: 'getWay',
                    selectedMethod: cubit.selectedMethod,
                    onChanged: (val) => cubit.changeSelectedMethod(val,context),
                    cardIconPath: Assets.iconsPaymentGetwayIcon,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
