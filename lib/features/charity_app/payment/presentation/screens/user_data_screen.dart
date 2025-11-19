import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_app_bar.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/continue_button.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/user_data/user_data_container.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatelessWidget {
  const UserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: CustomText(
          text: "أدخل بياناتك",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.darkGrey,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 24, start: 16, end: 16),
          child: UserDataContainer(),
        ),
      ),
      bottomNavigationBar: ContinueButton(),
    );
  }
}
