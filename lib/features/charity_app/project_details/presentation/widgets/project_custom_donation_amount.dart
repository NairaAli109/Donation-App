import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_svg_icon.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/custom_text_field.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectCustomDonationAmount extends StatelessWidget {
  const ProjectCustomDonationAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: "تخصيص مبلغ التبرغ",
          fontSize: 14,
          color: AppColors.mainBlack,
        ),
        BlocBuilder<ProjectDetailsCubit, ProjectDetailsStates>(
          builder: (context, state) {
            var cubit = ProjectDetailsCubit.get(context);

            return Form(
              key: cubit.formKey,
              child: CustomTextField(
                validator: (value) {
                  if (cubit.selectedAmount == null) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال المبلغ';
                    }

                    final amount = double.tryParse(value);
                    if (amount == null) {
                      return 'الرجاء إدخال رقم صحيح';
                    }

                    if (amount <= 0) {
                      return 'المبلغ يجب أن يكون أكبر من صفر';
                    }
                  }

                  return null;
                },
                controller: cubit.controller,
                width: 129,
                keyboardType: TextInputType.number,
                hintText: '100',
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
              ),
            );
          },
        ),
      ],
    );
  }
}
