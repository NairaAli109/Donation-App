import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.validator,
    this.width,
    this.height,
    required this.keyboardType,
    required this.hintText,
    this.suffixIcon,
    required this.controller, this.prefixIcon,
  });

  final String? Function(String?) validator;
  final TextEditingController controller;
  final double? width, height;
  final TextInputType keyboardType;
  final String hintText;
  final Widget? suffixIcon,prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 60,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.primaryColorForFatoorah,
          fontWeight: FontWeight.w400,
          fontFamily: AppStrings.almaraiFont,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColors.grey2,
            fontWeight: FontWeight.w400,
            fontFamily: AppStrings.almaraiFont,
          ),
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(
            minWidth: suffixIcon != null ? 20 : 0,
            minHeight: suffixIcon != null ? 20 : 0,
          ),
          prefixIcon: prefixIcon,

          filled: true,
          fillColor: AppColors.mainWhite,
          contentPadding: const EdgeInsetsDirectional.only(
            top: 12,
            bottom: 12,
            end: 8,
            start: 8,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.grey2, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.grey2,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColors.primaryColorForCharities,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          errorStyle: const TextStyle(
            fontSize: 12,
            height: 0.8,
            fontFamily: AppStrings.almaraiFont,
          ),
        ),
        validator: validator,
      ),
    );
  }
}
