import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    );
  }
}
