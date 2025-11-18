import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_onboard/cubit/charity_onboard_cubit.dart';
import 'package:donation_app/features/charity_onboard/cubit/charity_onboard_states.dart';
import 'package:donation_app/core/widgets/custom_slider_with_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CharitySlider extends StatelessWidget {
  const CharitySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharityOnboardCubit, CharityOnboardStates>(
      builder: (context, state) {
        var cubit = CharityOnboardCubit.get(context);
        return CustomSliderWithDots(
          sliderImagesList: cubit.sliderImages,
          imageHeight: 533,
          isPositionedDots: true,
          dotsEffect: ExpandingDotsEffect(
            dotHeight: 10,
            dotWidth: 10,
            expansionFactor: 3,
            dotColor: AppColors.mainWhite,
            activeDotColor: AppColors.primaryColorForCharities,
          ),
        );
      },
    );
  }
}
