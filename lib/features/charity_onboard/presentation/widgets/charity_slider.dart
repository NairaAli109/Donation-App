import 'package:carousel_slider/carousel_slider.dart';
import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CharitySlider extends StatefulWidget {
  const CharitySlider({super.key});

  @override
  State<CharitySlider> createState() => _CharitySliderState();
}

class _CharitySliderState extends State<CharitySlider> {
  int activeIndex = 0;
  final CarouselSliderController? controller = CarouselSliderController();

  final List<String> sliderImages = [
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
    Assets.imagesCharityOnboardImage,
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 533,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
          ),
          items:
              sliderImages.map((img) {
                return CustomAssetsImage(
                  assetName: img,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 533,
                );
              }).toList(),
        ),

        Positioned(
          bottom: 70,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: sliderImages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 3,
                dotColor: AppColors.mainWhite,
                activeDotColor: AppColors.primaryColorForCharities,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
