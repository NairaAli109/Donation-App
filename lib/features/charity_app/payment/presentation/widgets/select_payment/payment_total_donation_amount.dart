import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class PaymentTotalDonationAmount extends StatelessWidget {
  const PaymentTotalDonationAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      borderColor: Colors.transparent,
      fillColor: AppColors.grey6,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 9),
      widget: Row(
        children: [
          CustomText(
            text: "أجمالي قيمة التبرع",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColorForCharities,
          ),
          Spacer(),
          CustomText(
            text: "150",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColorForCharities,
          ),
          HorizontalSpace(width: 4),
          CustomSvgIcon(
            assetName: Assets.iconsRialIcon,
            width: 18,
            height: 18,
            fit: BoxFit.cover,
            color: AppColors.primaryColorForCharities,
          ),
        ],
      ),
    );
  }
}
