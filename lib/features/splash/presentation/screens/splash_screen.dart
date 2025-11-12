import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_assets_image.dart';
import 'package:donation_app/features/splash/cubit/splash_cubit.dart';
import 'package:donation_app/features/splash/cubit/splash_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashStates>(
      builder: (context, state) {
        var cubit = SplashCubit.get(context);

        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Center(
              child: CustomAssetsImage(
                assetName: cubit.appLogo,
                width: 260,
                height: 172,
              ),
            ),
          ),
        );
      },
    );
  }
}
