import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/customize_donation_amount.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/donate_button.dart';
import 'package:donation_app/features/donate_now/presentation/widgets/donation_amounts.dart';
import 'package:flutter/material.dart';

class DonationContainer extends StatelessWidget {
  const DonationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 17, end: 15),
        child: Container(
          // height: 375,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.grey6,
          ),
          padding: EdgeInsetsDirectional.only(
            start: 16,
            end: 16,
            top: 40,
            bottom: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "أختر مبلغ التبرع الخاص بك",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
              DonationAmounts(),
              CustomText(
                text: "أو يمكنك تخصيص مبلغ التبرع",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
              VerticalSpace(height: 23),
              CustomizeDonationAmount(),
              VerticalSpace(height: 19),
              DonateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
