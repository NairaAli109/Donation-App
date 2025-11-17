import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/cart/presentation/widgets/cart_donate_button.dart';
import 'package:donation_app/features/cart/presentation/widgets/cart_items_list.dart';
import 'package:donation_app/features/cart/presentation/widgets/total_donation_amount.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 16, end: 16, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "سلة التسوق",
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              VerticalSpace(height: 40),
              TotalDonationAmount(),
              // VerticalSpace(height: 32),
              CartItemsList(),
              VerticalSpace(height: 32),
              CartDonateButton(),
              VerticalSpace(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
