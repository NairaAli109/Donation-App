import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/payment/cubit/payment_option/payment_option_cubit.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/payment_done_screen.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/cards_icons.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/card_payment.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/get_way_payment.dart';
import 'package:donation_app/features/charity_app/payment/presentation/widgets/select_payment/payment_total_donation_amount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PaymentOptionBottomSheet extends StatelessWidget {
  const PaymentOptionBottomSheet({super.key, required this.isCardPayment});

  final bool isCardPayment;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<PaymentOptionCubit>(),
      child: Padding(
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
              onTap: () {
                if (isCardPayment) {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: PaymentDoneScreen(),
                    withNavBar: false,
                  );
                }
              },
              text: "ادفع الان",
              radius: 12,
              textColor: AppColors.backgroundColor,
              fillColor: AppColors.primaryColorForCharities,
              borderColor: Colors.transparent,
            ),
            if (isCardPayment) CardsIcons(),
          ],
        ),
      ),
    );
  }
}
