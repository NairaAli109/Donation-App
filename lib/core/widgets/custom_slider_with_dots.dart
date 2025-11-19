import 'package:carousel_slider/carousel_slider.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSliderWithDots extends StatefulWidget {
  const CustomSliderWithDots({
    super.key,
    required this.sliderImagesList,
    required this.dotsEffect,
    required this.imageHeight,
    this.imageClipRaduis,
    required this.isPositionedDots,
  });

  final List<String> sliderImagesList;
  final IndicatorEffect dotsEffect;
  final double imageHeight;
  final double? imageClipRaduis;
  final bool isPositionedDots;

  @override
  State<CustomSliderWithDots> createState() => _CustomSliderWithDotsState();
}

class _CustomSliderWithDotsState extends State<CustomSliderWithDots> {
  int activeIndex = 0;
  final CarouselSliderController? controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final List<String> sliderImages = widget.sliderImagesList;
    final IndicatorEffect dotsEffect = widget.dotsEffect;
    final double imageHeight = widget.imageHeight;
    final double? imageClipRaduis = widget.imageClipRaduis;
    final bool isPositionedDots = widget.isPositionedDots;

    return isPositionedDots
        ? Stack(
          children: [
            CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                height: imageHeight,
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
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(imageClipRaduis ?? 0),
                      child: CustomAssetsImage(
                        assetName: img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 533,
                      ),
                    );
                  }).toList(),
            ),

            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: sliderImages.length,
                  effect: dotsEffect,
                ),
              ),
            ),
          ],
        )
        : Column(
          children: [
            CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                height: imageHeight,
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
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(imageClipRaduis ?? 0),
                      child: CustomAssetsImage(
                        assetName: img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 533,
                      ),
                    );
                  }).toList(),
            ),

            VerticalSpace(height: 10),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: sliderImages.length,
                effect: dotsEffect,
              ),
            ),
          ],
        );
  }
}
