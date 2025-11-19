import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NoOfDaysAndNoOfDonor extends StatelessWidget {
  const NoOfDaysAndNoOfDonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "1,048 متبرع",
          color: AppColors.grey,
        ),
        CustomText(
          text: "22 يوما متبقى",
          color: AppColors.grey,
        ),
      ],
    );
  }
}
