import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_slider_with_dots.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_cubit.dart';
import 'package:donation_app/features/charity_app/project_details/cubit/project_details_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectSlider extends StatelessWidget {
  const ProjectSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectDetailsCubit, ProjectDetailsStates>(
      builder: (context, state) {
        var cubit = ProjectDetailsCubit.get(context);
        return CustomSliderWithDots(
          sliderImagesList: cubit.sliderImages,
          imageHeight: 293,
          imageClipRaduis: 16,
          isPositionedDots: false,
          dotsEffect: ScrollingDotsEffect(
            dotHeight: 10,
            dotWidth: 10,
            spacing: 3,
            dotColor: AppColors.grey2,
            activeDotColor: AppColors.primaryColorForCharities,
          ),
        );
      },
    );
  }
}
