import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_cubit.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment/payment_states.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/user_email.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/user_mobile_number.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/user_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDataContainer extends StatelessWidget {
  const UserDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.mainWhite,
        border: Border.all(color: AppColors.grey2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 24),
      child: BlocBuilder<PaymentCubit, PaymentStates>(
        builder: (context, state) {
          var cubit = PaymentCubit.get(context);
          return Form(
            key: cubit.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "ادخل معلوماتك",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.grey8,
                ),
                VerticalSpace(height: 24),
                UserName(),
                UserMobileNumber(),
                UserEmail(),
              ],
            ),
          );
        },
      ),
    );
  }
}
