import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/spacer/horizontal_spacer.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  Otp({super.key});

  final filledTheme = PinTheme(
    padding: EdgeInsets.zero,
    margin: EdgeInsets.zero,
    width: 56,
    height: 56,
    decoration: BoxDecoration(
      color: AppColors.backgroundColor,
      border: Border.all(width: 1, color: AppColors.primaryColorForFatoorah),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final defaultTheme = PinTheme(
    padding: EdgeInsets.zero,
    margin: EdgeInsets.zero,
    width: 56,
    height: 56,
    decoration: BoxDecoration(
      color: AppColors.secondaryMainColor,
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      focusNode: FocusNode(),
      separatorBuilder: (index) => HorizontalSpace(width: 24),
      defaultPinTheme: defaultTheme,
      focusedPinTheme: filledTheme,
      submittedPinTheme: filledTheme,
      disabledPinTheme: filledTheme,
    );
  }
}
