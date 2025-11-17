import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/amount_text_field.dart';
import 'package:flutter/material.dart';

class CustomizeDonationAmount extends StatelessWidget {
  const CustomizeDonationAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "ادخل مبلغ التبرغ",
            fontSize: 14,
            color: AppColors.mainBlack,
          ),
          CustomAmountTextField()
        ],
      ),
    );
  }
}
