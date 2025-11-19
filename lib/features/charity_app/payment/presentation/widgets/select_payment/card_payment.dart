import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CardPayment extends StatelessWidget {
  const CardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16,
      children: [
        CustomSvgIcon(assetName: Assets.iconsTabToPayIcon),
        CustomText(
          text: "ممر الكارت الخاص بك",
          fontWeight: FontWeight.w700,
          fontSize: 18,
          textAlign: TextAlign.center,
        ),
        CustomText(
          text: "بمجرد تمرير الكارت الخاص بك سوف يتم خصم مبلغ التبرع تلقائى",
          fontSize: 14,
          color: AppColors.grey,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
