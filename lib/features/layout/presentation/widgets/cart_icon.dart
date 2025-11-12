import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_circle_avatar.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomSvgIcon(assetName: Assets.iconsCartIcon),
        Positioned(
          top: -2, // تحريك الـ badge فوق الأيقونة
          right: -2, // تحريكها ناحية اليمين
          child: CustomCircleAvatar(
            width: 12,
            height: 12,
            filledColor: AppColors.primaryColorForCharities,
            child: CustomText(
              text: "2",
              fontSize: 8,
              color: AppColors.backgroundColor,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
