import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/cards_icons.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/card_payment.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/get_way_payment.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/payment_total_donation_amount.dart';
import 'package:flutter/material.dart';

class PaymentOptionBottomSheet extends StatelessWidget {
  const PaymentOptionBottomSheet({
    super.key,
    required this.isCardPayment,
    required this.onTap,
  });
  final bool isCardPayment;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 24,
        end: 24,
        top: 32,
        bottom: 46,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentTotalDonationAmount(),
          VerticalSpace(height: 18.67),
          if (isCardPayment) CardPayment(),
          if (!isCardPayment) GetWayPayment(),
          VerticalSpace(height: 18.67),
          CustomButton(
            onTap: () => onTap(),
            text: "ادفع الان",
            radius: 12,
            textColor: AppColors.backgroundColor,
            fillColor: AppColors.primaryColorForCharities,
            borderColor: Colors.transparent,
          ),
          if (isCardPayment) CardsIcons(),
        ],
      ),
    );
  }
}
