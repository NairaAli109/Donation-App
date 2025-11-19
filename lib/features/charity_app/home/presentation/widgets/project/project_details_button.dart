import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/charity_app/project_details/presentation/screens/project_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class ProjectDetailsButton extends StatelessWidget {
  const ProjectDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomButton(
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: BlocProvider(
              create: (context) => getIt.get<ProjectDetailsCubit>(),
              child: ProjectDetailsScreen(),
            ),
            withNavBar: false,
          );
        },
        text: "عرض التفاصيل",
        fillColor: Colors.transparent,
        borderColor: AppColors.primaryColorForCharities,
        textColor: AppColors.primaryColorForCharities,
        radius: 12,
      ),
    );
  }
}
