import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/widgets/charity_details.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/widgets/chrity_slider.dart';
import 'package:flutter/material.dart';

class MobileCharityOnboard extends StatelessWidget {
  const MobileCharityOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CharitySlider(),
        Positioned(
          top: 550,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: CharityDetails(),
          ),
        ),
      ],
    );
  }
}
