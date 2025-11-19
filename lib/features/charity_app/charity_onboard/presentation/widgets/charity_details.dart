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

class CharityDetails extends StatelessWidget {
  const CharityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                Flexible(
                  child: CustomText(
                    text: "بمساهمتك اليوم، تصنع فرقًا في حياة الكثيرين",
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
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
                onTap:
                    () => context.pushNamedAndRemoveAll(
                      AppRoutesNames.layoutScreen,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
