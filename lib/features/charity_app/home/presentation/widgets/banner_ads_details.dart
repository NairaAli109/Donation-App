import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';

class BannerAdsDetails extends StatelessWidget {
  const BannerAdsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 30.5,
        start: 24,
        end: 24,
        bottom: 30.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "أكفل يتيم ووفر له الرعاية \nالصحية والاجتماعية والصحية.",
            fontWeight: FontWeight.w700,
            fontSize: 14,
            height: 2,
            color: AppColors.backgroundColor,
          ),
          VerticalSpace(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                onTap: () {},
                width: 97,
                height: 30,
                radius: 23,
                fillColor: AppColors.backgroundColor,
                widget: CustomText(
                  text: "عرض التفاصيل",
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColorForCharities,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
