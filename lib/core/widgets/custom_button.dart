import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.text,
    this.textColor,
    this.borderColor,
    this.fillColor,
    this.widget,
    this.height,
    this.width,
    this.prefixIcon,
    this.radius,
    this.textStyle,
    this.padding,
    this.alignment,
  });

  final Function? onTap;
  final Widget? widget, prefixIcon;
  final String? text;
  final Color? textColor;
  final Color? borderColor;
  final Color? fillColor;
  final double? height;
  final double? width, radius;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Align(
        alignment: alignment ?? Alignment.center,
        child: Container(
          height: height ?? 52,
          width: width ?? double.infinity,
          padding: padding ?? const EdgeInsets.only(bottom: 1),
          decoration: BoxDecoration(
            color: fillColor ?? AppColors.primaryColorForFatoorah,
            borderRadius: BorderRadius.circular(radius ?? 8),
            border: Border.all(
              color: borderColor ?? AppColors.primaryColorForFatoorah,
            ),
          ),
          child:
              prefixIcon == null
                  ? (text != null
                      ? Center(
                        child: CustomText(
                          textStyle: textStyle,
                          text: text ?? '',
                          color: textColor ?? AppColors.mainWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                      : Center(child: widget))
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      prefixIcon!,
                      (text != null
                          ? Center(
                            child: CustomText(
                              text: text ?? '',
                              textStyle: textStyle,
                              color: textColor ?? AppColors.mainWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                          : Center(child: widget)),
                    ],
                  ),
        ),
      ),
    );
  }
}
