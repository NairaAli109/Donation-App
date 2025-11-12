import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final bool hasFontSize;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? color;
  final Color? decorationColor;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;
  final double? wordSpacing;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextStyle? textStyle;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w400,
    this.fontFamily = AppStrings.almaraiFont,
    this.color = AppColors.primaryColorForFatoorah,
    this.decorationColor = AppColors.primaryColorForFatoorah,
    this.textAlign = TextAlign.right,
    this.letterSpacing,
    this.height,
    this.decoration,
    this.maxLines,
    this.fontStyle,
    this.wordSpacing = 0.0,
    this.hasFontSize = true,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
      ),
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: true,
      style:
          textStyle ??
          TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontStyle: fontStyle,
            letterSpacing: letterSpacing,
            height: height,
            decoration: decoration,
            decorationColor: decorationColor,
            wordSpacing: wordSpacing,
            overflow:
                maxLines != null ? TextOverflow.ellipsis : TextOverflow.visible,
          ),
    );
  }
}
