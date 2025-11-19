import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class BannerBackground extends StatelessWidget {
  const BannerBackground({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    final mainColor = AppColors.primaryColorForCharities;
    final circleColor = AppColors.backgroundColor.withValues(alpha: 0.1);
    return Stack(
      children: [
        Container(decoration: BoxDecoration(color: mainColor)),

        ///circle on the left
        Positioned(
          left: -height * 0.25,
          bottom: -height * 0.50,
          child: Container(
            width: height * 1.2,
            height: height * 1.2,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),

        ///circle on the right
        Positioned(
          right: -height * 0.18,
          top: -height * 0.18,
          child: Container(
            width: height * 0.9,
            height: height * 0.9,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
