import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:donation_app/features/home/presentation/widgets/project/add_to_cart_button.dart';
import 'package:donation_app/features/project_details/presentation/widgets/donate_now_button.dart';
import 'package:flutter/material.dart';

class ProjectBottomNav extends StatelessWidget {
  const ProjectBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: AppColors.grey7,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 16,
          end: 16,
          top: 16,
          bottom: 30,
        ),
        child: Row(
          children: [
            DonateNowButton(),

            HorizontalSpace(width: 16),
            AddToCartButton(
              onTap: () {},
              buttonColor: Colors.transparent,
              borderColor: AppColors.primaryColorForCharities,
              textColor: AppColors.primaryColorForCharities,
            ),
          ],
        ),
      ),
    );
  }
}
