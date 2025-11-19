import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/banner_slider.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/categories_list.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/home_app_bar.dart';
import 'package:donation_app/features/charity_app/home/presentation/widgets/project/projects_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 15, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                VerticalSpace(height: 32),
                BannerSlider(),
                VerticalSpace(height: 32),
                CategoriesList(),
                VerticalSpace(height: 23),
                ProjectsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
