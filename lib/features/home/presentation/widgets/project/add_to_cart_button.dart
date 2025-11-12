import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomButton(
        onTap: () {},
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "أضف للسلة",
              color: AppColors.backgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            HorizontalSpace(width: 8),
            CustomSvgIcon(assetName: Assets.iconsAddToCartIcon),
          ],
        ),
        fillColor: AppColors.primaryColorForCharities,
        borderColor: Colors.transparent,
      ),
    );
  }
}
