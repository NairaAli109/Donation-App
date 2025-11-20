import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/widgets/charity_details.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class TabletCharityOnboard extends StatelessWidget {
  const TabletCharityOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomLeft: Radius.circular(24),
            ),
            child: CustomAssetsImage(
              assetName: Assets.imagesCharityOnboardImage,
              height: double.infinity,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 184, end: 172),
            child: CharityDetails(),
          ),
        ),
      ],
    );
  }
}
