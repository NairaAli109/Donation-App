import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/features/charity_app/payment/cubit/user_data/user_data_cubit.dart';
import 'package:donation_app/features/charity_app/payment/presentation/screens/user_data_screen.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class DonateNowButton extends StatelessWidget {
  const DonateNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectDetailsCubit, ProjectDetailsStates>(
      builder: (context, state) {
        var cubit = ProjectDetailsCubit.get(context);
        return Expanded(
          child: CustomButton(
            onTap: () {
              if (cubit.formKey.currentState!.validate() ||
                  cubit.selectedAmount != null) {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: BlocProvider(
                    create: (context) => getIt.get<UserDataCubit>(),
                    child: UserDataScreen(),
                  ),
                  withNavBar: false,
                );
              }
            },
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
