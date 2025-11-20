import 'package:donation_app/core/helpers/general_functions.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/screens/mobile_charity_onboard.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/screens/tablet_charity_onboard.dart';
import 'package:flutter/material.dart';

class CharityOnBoardScreen extends StatelessWidget {
  const CharityOnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isTablet = GeneralFunctions.isTablet(context);

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: isTablet ? TabletCharityOnboard() : MobileCharityOnboard(),
      ),
    );
  }
}
