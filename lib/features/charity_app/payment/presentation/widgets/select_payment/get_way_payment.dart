import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class GetWayPayment extends StatelessWidget {
  const GetWayPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16,
      children: [
        CustomSvgIcon(assetName: Assets.iconsMessagesIcon),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: CustomText(
            textAlign: TextAlign.center,
            text:
                "بمجرد اختيارك سوف تصلك رسالة على هاتفك لاستكمال طريقة الدفع المناسبة لك",
            fontSize: 14,
            color: AppColors.mainBlack,
          ),
        ),
      ],
    );
  }
}
