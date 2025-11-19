import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: "20,100",
          color: AppColors.grey,
          fontWeight: FontWeight.w700,
        ),
        HorizontalSpace(width: 4),
        CustomSvgIcon(assetName: Assets.iconsRialIcon),
        HorizontalSpace(width: 4),
        CustomText(
          text: "من",
          color: AppColors.grey,
          fontWeight: FontWeight.w700,
        ),
        HorizontalSpace(width: 4),
        CustomText(
          text: "40,100",
          color: AppColors.grey,
          fontWeight: FontWeight.w700,
        ),
        HorizontalSpace(width: 4),
        CustomSvgIcon(assetName: Assets.iconsRialIcon),
      ],
    );
  }
}
