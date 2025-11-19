import 'package:carousel_slider/carousel_slider.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_slider_with_dots.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_cubit.dart';
import 'package:donation_app/features/charity_app/home/cubit/home_states.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/banner_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int activeIndex = 0;
  final CarouselSliderController? controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return CustomSliderWithDots(
          sliderItem: BannerItem(),
          sliderImagesList: cubit.sliderItems,
          imageHeight: 160,
          imageClipRaduis: 24,
          isPositionedDots: false,
          dotsEffect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            expansionFactor: 3,
            dotColor: AppColors.grey12,
            activeDotColor: AppColors.primaryColorForCharities,
          ),
        );
      },
    );
  }
}
