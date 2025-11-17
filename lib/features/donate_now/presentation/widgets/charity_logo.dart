import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_circle_avatar.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CharityLogo extends StatelessWidget {
  const CharityLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCircleAvatar(
      borderWidth: 1.56,
      child: CustomAssetsImage(assetName: Assets.imagesBedayaCharityLogo),
    );
  }
}
