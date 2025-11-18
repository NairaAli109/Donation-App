import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/project_details/cubit/project_details_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonateNowButton extends StatelessWidget {
  const DonateNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectDetailsCubit, ProjectDetailsStates>(
      builder: (context, state) {
        var cubit = ProjectDetailsCubit.get(context);
        return Expanded(
          child: CustomButton(
            onTap: () => cubit.donationAmountValidation(),
            radius: 12,
            widget: CustomText(
              text: "تبرع الان",
              color: AppColors.backgroundColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            fillColor: AppColors.primaryColorForCharities,
            borderColor: Colors.transparent,
          ),
        );
      },
    );
  }
}
