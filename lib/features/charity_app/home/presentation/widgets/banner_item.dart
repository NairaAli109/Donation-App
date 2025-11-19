import 'package:donation_app/features/charity_app/home/presentation/widgets/banner_ads_details.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/banner_background.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({Key? key}) : super(key: key);

  final double height = 160;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,

      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 17),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            children: [BannerBackground(height: height), BannerAdsDetails()],
          ),
        ),
      ),
    );
  }
}
