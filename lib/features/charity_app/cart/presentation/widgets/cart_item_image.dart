import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CartItemImage extends StatelessWidget {
  const CartItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: CustomAssetsImage(
        assetName: Assets.imagesCharityOnboardImage,
        width: 90,
        height: 81,
      ),
    );
  }
}
