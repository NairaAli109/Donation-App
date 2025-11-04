import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:donation_app/features/home/presentation/screens/home_screen.dart';
import 'package:donation_app/features/language/presentation/screens/language_screen.dart';
import 'package:donation_app/features/login/presentation/screens/login_screen.dart';
import 'package:donation_app/features/splash/cubit/splash_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashInitialState());
  static SplashCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> initApp(BuildContext context) async {
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

    final bool? hasToken = PreferencesHelper.hasToken();
    final bool? hasAppLanguage = PreferencesHelper.hasLang();

    // if (!mounted) return;

    if (hasToken == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    } else if (hasAppLanguage == null || hasAppLanguage == false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LanguageScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    }
  }
}
