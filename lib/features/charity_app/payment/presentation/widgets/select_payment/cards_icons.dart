import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CardsIcons extends StatelessWidget {
  const CardsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(height: 18.67),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 14,
          children: [
            CustomSvgIcon(assetName: Assets.iconsCardPaymentIcon),
            CustomSvgIcon(assetName: Assets.iconsVisaCardIcon),
            CustomSvgIcon(assetName: Assets.iconsPaymentGetwayIcon),
          ],
        ),
      ],
    );
  }
}
