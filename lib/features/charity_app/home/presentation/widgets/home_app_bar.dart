import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_circle_avatar.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          height: 54,
          width: 54,
          child: CustomAssetsImage(assetName: Assets.imagesBedayaCharityLogo),
        ),
        HorizontalSpace(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: " جمعية بداية للأعمال الخيرية",
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            VerticalSpace(height: 8),
            CustomText(text: "اختر مجال التبرع الذي ترغب بالمساهمة فيه"),
          ],
        ),
      ],
    );
  }
}
