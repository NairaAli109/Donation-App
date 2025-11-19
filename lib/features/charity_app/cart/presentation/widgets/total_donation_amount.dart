import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class TotalDonationAmount extends StatelessWidget {
  const TotalDonationAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      height: 48,
      fillColor: AppColors.grey6,
      borderColor: Colors.transparent,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 9),
      widget: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "أجمالي قيمة التبرع",
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.primaryColorForCharities,
          ),
          Row(
            children: [
              CustomText(
                text: "260",
                color: AppColors.primaryColorForCharities,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              HorizontalSpace(width: 4),
              CustomSvgIcon(
                assetName: Assets.iconsRialIcon,
                width: 16,
                height: 16,
                color: AppColors.primaryColorForCharities,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
