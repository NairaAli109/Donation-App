import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/no_of_days_and_no_of_donor.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/price.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/price_progress_bar.dart';
import 'package:donation_app/features/charity_app/project_details/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ProjectBrief extends StatelessWidget {
  const ProjectBrief({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 8,
        end: 8,
        bottom: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: 'كفالة يتم'),
          VerticalSpace(height: 8),
          CustomText(
            text: "أكفل يتيم ووفر له الرعاية الصحية والاجتماعية والصحية.",
            color: AppColors.grey,
          ),
          VerticalSpace(height: 16),
          Price(),
          VerticalSpace(height: 8),
          PriceProgressBar(value: 0.3),
          VerticalSpace(height: 8),
          NoOfDaysAndNoOfDonor(),
        ],
      ),
    );
  }
}
