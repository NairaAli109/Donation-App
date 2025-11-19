import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DonationTextDetails extends StatelessWidget {
  const DonationTextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "تبرع للجمعية مباشرة",
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 27,
            end: 40,
            top: 24,
            bottom: 52,
          ),
          child: CustomText(
            textAlign: TextAlign.center,
            text:
                "تبرعك يساعدنا على الاستمرار في خدمة الأسر المحتاجة ودعم جهود الجمعية في برامجها الإنسانية",
            fontSize: 14,
            color: AppColors.mainBlack,
          ),
        ),
      ],
    );
  }
}
