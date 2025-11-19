import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class PriceProgressBar extends StatelessWidget {
  const PriceProgressBar({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.grey5,
      color: AppColors.primaryColorForFatoorah,
      minHeight: 4,
      borderRadius: BorderRadius.circular(100),
    );
  }
}
