import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateButton extends StatelessWidget {
  const DonateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonateNowCubit, DonateNowStates>(
      builder: (context, state) {
        var cubit = DonateNowCubit.get(context);

        return CustomButton(
          onTap: () =>cubit.donationAmountValidation(),
          fillColor: AppColors.primaryColorForCharities,
          borderColor: AppColors.primaryColorForCharities,
          widget: Center(
            child: CustomText(
              text: "تبرع الان",
              color: AppColors.backgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      },
    );
  }
}
