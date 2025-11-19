import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/features/charity_app/layout/cubit/layout_cubit.dart';
import 'package:donation_app/features/charity_app/layout/cubit/layout_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LayoutCubit, LayoutStates>(
  builder: (context, state) {
    var cubit = LayoutCubit.get(context);

    return PersistentTabView(
      context,
      controller: cubit.controller,
      screens: cubit.screens,
      items: cubit.navBarsItems(),
      navBarStyle: NavBarStyle.style3,
      backgroundColor:AppColors.backgroundColor,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar:AppColors.backgroundColor,
      ),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      navBarHeight: 64,
    );

  },
);
  }
}
