import 'package:donation_app/core/helpers/app_strings.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';

import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CustomAmountTextField extends StatelessWidget {
  const CustomAmountTextField({
    super.key,
    required this.validator,
    required this.formKey,
    required this.controller,
  });

  final String? Function(String?) validator;
  final formKey;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 129,
      height: 60,
      child: Form(
        key: formKey,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.primaryColorForFatoorah,
            fontWeight: FontWeight.w400,
            fontFamily: AppStrings.almaraiFont,
          ),
          decoration: InputDecoration(
            hintText: "100",
            hintStyle: TextStyle(
              fontSize: 14,
              color: AppColors.grey2,
              fontWeight: FontWeight.w400,
              fontFamily: AppStrings.almaraiFont,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomSvgIcon(
                assetName: Assets.iconsRialIcon,
                color: AppColors.primaryColorForCharities,
                width: 16,
                height: 16,
                fit: BoxFit.contain,
              ),
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 20, minHeight: 20),

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
                color: AppColors.primaryColorForCharities,
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
      ),
    );
  }
}
