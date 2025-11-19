import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.onTap,
    this.buttonColor,
    this.borderColor,
    this.textColor,
  });

  final Function onTap;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomButton(
        onTap: () => onTap(),
        radius: 12,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "أضف للسلة",
              color: textColor ?? AppColors.backgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            HorizontalSpace(width: 8),
            CustomSvgIcon(
              assetName: Assets.iconsAddToCartIcon,
              color: textColor ?? null,
            ),
          ],
        ),
        fillColor: buttonColor ?? AppColors.primaryColorForCharities,
        borderColor: borderColor ?? Colors.transparent,
      ),
    );
  }
}
