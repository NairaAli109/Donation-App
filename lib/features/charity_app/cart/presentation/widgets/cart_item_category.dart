import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';

class CartItemCategory extends StatelessWidget {
  const CartItemCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text: "زكاة", color: AppColors.grey),
        VerticalSpace(height: 16),
        CustomText(
          text: "كفالة يتم",
          color: AppColors.primaryColorForFatoorah,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ],
    );
  }
}
