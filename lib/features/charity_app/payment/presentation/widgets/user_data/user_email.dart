import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/custom_text_field.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserEmail extends StatelessWidget {
  const UserEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentStates>(
      builder: (context, state) {
        var cubit = PaymentCubit.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "البريد الاكتروني",
              fontWeight: FontWeight.w700,
              color: AppColors.mainBlack,
            ),
            VerticalSpace(height: 12),
            CustomTextField(
              validator: (value) {
                return null;
              },
              controller: cubit.emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: 'أدخل البريد الاكتروني',
            ),
            VerticalSpace(height: 16),
          ],
        );
      },
    );
  }
}
