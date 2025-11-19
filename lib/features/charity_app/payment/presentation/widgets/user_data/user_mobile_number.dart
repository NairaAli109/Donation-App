import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/custom_phone_field.dart';
import 'package:flutter/material.dart';

class UserMobileNumber extends StatelessWidget {
  const UserMobileNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            CustomText(
              text: "رقم الهاتف",
              fontWeight: FontWeight.w700,
              color: AppColors.mainBlack,
            ),
            CustomText(
              text: "*",
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.red,
            ),
          ],
        ),
        VerticalSpace(height: 12),
        CustomPhoneField(),
        VerticalSpace(height: 16),
      ],
    );
  }
}
