import 'package:donation_app/core/helpers/extensions.dart';
import 'package:donation_app/core/routing/app_routes_names.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 23.5, end: 23.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: ' أهلاً بك في نظام فاتورة ',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              VerticalSpace(height: 16),
              CustomText(
                text:
                    'قبل البدء في استقبال التبرعات، يرجى تفعيل هذا الجهاز باستخدام كود الاشتراك الخاص بجمعيتك',
                fontSize: 14,
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
              VerticalSpace(height: 32),
              CustomButton(
                onTap:
                    () => context.pushNamed(AppRoutesNames.checkDeviceScreen),
                text: "أبدأ التفعيل",
              ),
              VerticalSpace(height: 16),
              CustomText(
                text:
                    'هذا الإعداد يتم مرة واحدة فقط أثناء تشغيل الجهاز لأول مرة',
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
