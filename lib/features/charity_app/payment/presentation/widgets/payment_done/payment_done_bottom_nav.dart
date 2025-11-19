import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:flutter/material.dart';

class PaymentDoneBottomNav extends StatelessWidget {
  const PaymentDoneBottomNav({super.key});

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
            Expanded(
              child: CustomButton(
                onTap: () {},
                text: "طباعة الايصال",
                fillColor: AppColors.primaryColorForCharities,
                borderColor: Colors.transparent,
                radius: 12,
              ),
            ),
            HorizontalSpace(width: 16),
            Expanded(
              child: CustomButton(
                onTap: () {
                  context.pushNamedAndRemoveAll(AppRoutesNames.layoutScreen);
                },
                text: "عودة للرئيسية",
                textColor: AppColors.primaryColorForCharities,
                fillColor: Colors.transparent,
                borderColor: AppColors.primaryColorForCharities,
                radius: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
