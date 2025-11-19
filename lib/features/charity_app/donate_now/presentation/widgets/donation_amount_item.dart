import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class DonationAmountItem extends StatelessWidget {
  const DonationAmountItem({
    super.key,
    required this.amount,
    required this.cubit,
  });

  final double amount;
  final cubit;

  @override
  Widget build(BuildContext context) {
    final isSelected = cubit.selectedAmount == amount;

    return CustomButton(
      onTap: () => cubit.changeSelectedDonationAmount(amount),
      fillColor:
          isSelected ? AppColors.primaryColorForCharities : AppColors.mainWhite,
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
            HorizontalSpace(width: 4),
            CustomSvgIcon(
              assetName: Assets.iconsRialIcon,
              width: 16,
              height: 16,
              fit: BoxFit.contain,
              color:
                  isSelected
                      ? AppColors.backgroundColor
                      : AppColors.primaryColorForFatoorah,
            ),
          ],
        ),
      ),
    );
  }
}
