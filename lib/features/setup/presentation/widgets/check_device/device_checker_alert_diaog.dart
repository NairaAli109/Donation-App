import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';

class DeviceCheckerAlertDialog extends StatelessWidget {
  const DeviceCheckerAlertDialog({
    super.key,
    required this.iconPath,
    required this.dialogTitle,
    required this.dialogDescription,
    this.buttonText,
    this.hint,
    this.onTap,
    required this.isFailed,
    required this.isDeviceLimitReached,
  });

  final String iconPath;
  final String dialogTitle;
  final String dialogDescription;
  final String? buttonText;
  final String? hint;
  final Function? onTap;
  final bool isFailed;
  final bool isDeviceLimitReached;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.mainWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        // height: 440,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 26,
            vertical: 28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSvgIcon(assetName: iconPath),
              VerticalSpace(height: 20),
              CustomText(
                text: dialogTitle,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
              VerticalSpace(height: 16),
              CustomText(
                text: dialogDescription,
                fontSize: 14,
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
              if (isDeviceLimitReached==false)
                Column(
                  children: [
                    VerticalSpace(height: 30),
                    CustomButton(text: buttonText, onTap: () => onTap!()),
                    VerticalSpace(height: 8),
                    CustomText(
                      text: hint!,
                      fontSize: 14,
                      color: AppColors.lightGrey,
                      textAlign: TextAlign.center,
                      decoration:
                          isFailed
                              ? TextDecoration.underline
                              : TextDecoration.none,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
