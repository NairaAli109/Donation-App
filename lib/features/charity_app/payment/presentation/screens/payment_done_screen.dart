import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/payment_done/payment_done_bottom_nav.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 68,
            end: 67,
            top: 123,
            bottom: 184,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAssetsImage(
                assetName: Assets.imagesSuccessTransactionImage,
              ),
              VerticalSpace(height: 32),
              CustomText(
                text: " تم استلام تبرعك بنجاح. شكرًا لمساهمتك الكريمة",
                textAlign: TextAlign.center,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.grey8,
                height: 2,
              ),
              VerticalSpace(height: 27),
              CustomText(
                text: "يمكنك ادخال بياناتك لطباعة إيصال التبرع",
                textAlign: TextAlign.center,
                fontSize: 14,
                color: AppColors.grey8,
              ),
              VerticalSpace(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  CustomText(
                    text: "رقم تبرعك:",
                    textAlign: TextAlign.center,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                  ),
                  CustomText(
                    text: "#546463123",
                    textAlign: TextAlign.center,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PaymentDoneBottomNav(),
    );
  }
}
