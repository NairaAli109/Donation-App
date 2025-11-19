import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomArrowBackIcon extends StatelessWidget {
  const CustomArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';

    return InkWell(
      onTap: () => context.pop(),
      splashColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomSvgIcon(assetName: Assets.iconsGreyCircleIcon),
          CustomSvgIcon(
            assetName:
                isArabic
                    ? Assets.iconsArrowBackRightIcon
                    : Assets.iconsArrowBackIcon,
          ),
        ],
      ),
    );
  }
}
