import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:donation_app/core/dependency_injection/setup_git.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/features/charity_app/charity_onboard/presentation/screens/charity_onboard_screen.dart';
import 'package:donation_app/features/setup/cubit/setup_cubit/setup_cubit.dart';
import 'package:donation_app/features/setup/presentation/screens/setup_screen.dart';
import 'package:donation_app/features/splash/cubit/splash_states.dart';
import 'package:donation_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashInitialState());

  static SplashCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> initApp(BuildContext context) async {
    await _changeAppLogo();
    await _getDeviceSerialNumber();
    await _navigate(context);
  }

  String serialNumber = 'Unknown';
  Future<void> _getDeviceSerialNumber() async {
    final deviceInfo = DeviceInfoPlugin();
    String serial = 'Unknown';

    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        serial = androidInfo.id;
        debugPrint("""
🔹 Device Info:
   Model: ${androidInfo.model}
   Device: ${androidInfo.device}
   ID: ${androidInfo.id}
""");
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        serial = iosInfo.identifierForVendor ?? 'N/A';
        debugPrint("🔹 iOS Device ID: $serial");
      }
    } catch (e) {
      debugPrint('⚠️ Error getting device info: $e');
    }

    serialNumber = serial;
  }

  Future<void> _navigate(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    // final bool? hasToken = PreferencesHelper.hasToken();
    // final bool? hasAppLanguage = PreferencesHelper.hasLang();
    final bool? hasSetup = PreferencesHelper.hasSetup();

    if (hasSetup == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => CharityOnBoardScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt.get<SetupCubit>(),
                child: SetupScreen(),
              ),
        ),
      );
    }

    // if (hasToken == true) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (_) => HomeScreen()),
    //   );
    // } else if (hasAppLanguage == null || hasAppLanguage == false) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (_) => LanguageScreen()),
    //   );
    // } else {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder:
    //           (_) => BlocProvider(
    //             create: (context) => getIt.get<SetupCubit>(),
    //             child: SetupScreen(),
    //           ),
    //     ),
    //   );
    // }
  }

  String appLogo = Assets.imagesFatoorahLogo;
  Future<void> _changeAppLogo() async {
    final bool? hasSetup = PreferencesHelper.hasSetup();
    print("hasSetup  ::::::::::::::::::::::  $hasSetup");

    if (hasSetup == true) {
      appLogo = Assets.imagesBedayaCharityLogo;
    } else {
      appLogo = Assets.imagesFatoorahLogo;
    }
  }
}
