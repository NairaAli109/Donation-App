import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/charity_logo.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/donation_container.dart';
import 'package:donation_app/features/charity_app/donate_now/presentation/widgets/donation_text_details.dart';
import 'package:flutter/material.dart';

class DonateNow extends StatelessWidget {
  const DonateNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CharityLogo(),
            VerticalSpace(height: 16),
            DonationTextDetails(),
            DonationContainer(),
          ],
        ),
      ),
    );
  }
}
