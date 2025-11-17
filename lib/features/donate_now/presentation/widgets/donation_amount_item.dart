import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_cubit.dart';
import 'package:donation_app/features/donate_now/cubit/donate_now_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonationAmountItem extends StatelessWidget {
  const DonationAmountItem({super.key, required this.amount});

  final double amount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonateNowCubit, DonateNowStates>(
      builder: (context, state) {
        var cubit = DonateNowCubit.get(context);
        final isSelected = cubit.selectedAmount == amount;

        return CustomButton(
          onTap: () => cubit.changeSelectedDonationAmount(amount),
          fillColor:
              isSelected
                  ? AppColors.primaryColorForCharities
                  : AppColors.mainWhite,
          borderColor: AppColors.grey2,
          padding: EdgeInsetsDirectional.only(top: 15, bottom: 15),
          widget: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "$amount",
                  fontSize: 14,
                  color:
                      isSelected
                          ? AppColors.backgroundColor
                          : AppColors.primaryColorForFatoorah,
                ),
                CustomSvgIcon(
                  assetName: Assets.iconsRialIcon,
                  width: 20,
                  height: 20,
                  color:
                      isSelected
                          ? AppColors.backgroundColor
                          : AppColors.primaryColorForFatoorah,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
