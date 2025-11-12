import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.child, this.filledColor, this.width, this.height});

  final Widget child;
  final Color? filledColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width?? 101,
      height: height??101,
      decoration: BoxDecoration(
        color: filledColor ?? Colors.transparent,
        border: Border.all(color: AppColors.primaryColorForCharities),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
