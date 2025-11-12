import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: CustomAssetsImage(
        assetName: Assets.imagesCharityOnboardImage,
        fit: BoxFit.cover,
        height: 164,
        width: double.infinity,
      ),
    );
  }
}
