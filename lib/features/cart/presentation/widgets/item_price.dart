import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: "200",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.grey,
        ),
        HorizontalSpace(width: 4),
        CustomSvgIcon(
          assetName: Assets.iconsRialIcon,
          width: 16,
          height: 16,
          color: AppColors.grey,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
