import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomArrowBackIcon extends StatelessWidget {
  const CustomArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      splashColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomSvgIcon(assetName: Assets.iconsGreyCircleIcon),
          CustomSvgIcon(assetName: Assets.iconsArrowBackIcon),
        ],
      ),
    );
  }
}
