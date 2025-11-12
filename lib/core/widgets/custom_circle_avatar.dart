import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 101,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.primaryColorForCharities),
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
