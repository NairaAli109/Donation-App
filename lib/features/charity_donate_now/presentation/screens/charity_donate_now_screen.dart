import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_circle_avatar.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CharityDonateNowScreen extends StatelessWidget {
  const CharityDonateNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(240),
              ),
              child: CustomAssetsImage(
                assetName: Assets.imagesCharityOnboardImage,
                fit: BoxFit.cover,
                height: 430,
                width: double.infinity,
              ),
            ),
            VerticalSpace(height: 59.55),
            CustomCircleAvatar(
              child: CustomAssetsImage(
                assetName: Assets.imagesBedayaCharityLogo,
              ),
            ),
            VerticalSpace(height: 16),
            CustomText(
              text: " جمعية بداية للأعمال الخيرية",
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
            VerticalSpace(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "بمساهمتك اليوم، تصنع فرقًا في حياة الكثيرين",
                  fontSize: 14,
                  color: AppColors.grey,
                ),
                HorizontalSpace(width: 4),
                CustomSvgIcon(assetName: Assets.iconsCharityIcon),
              ],
            ),
            VerticalSpace(height: 32),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
              child: CustomButton(
                text: "تبرع الان",
                fillColor: AppColors.primaryColorForCharities,
                textColor: AppColors.backgroundColor,
                radius: 16,
                onTap: () {
                  context.pushNamedAndRemoveAll(AppRoutesNames.layoutScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
