import 'package:donation_app/features/charity_app/charity_onboard/presentation/widgets/charity_details.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/widgets/chrity_slider.dart';
import 'package:flutter/material.dart';

class CharityOnBoardScreen extends StatefulWidget {
  const CharityOnBoardScreen({super.key});

  @override
  State<CharityOnBoardScreen> createState() => _CharityOnBoardScreenState();
}

class _CharityOnBoardScreenState extends State<CharityOnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [CharitySlider(), CharityDetails()]),
      ),
    );
  }
}
