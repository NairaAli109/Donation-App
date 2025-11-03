import 'package:donation_app/core/helpers/prefrences_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class GeneralFunctions {
  static setPreferredOrientation() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  // RegExp
  static bool isValidEmail(String email) =>
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
          .hasMatch(email);

  // RegExp
  static bool isValidPassword(String password) =>
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$')
          .hasMatch(password);

  static String? phoneValidator(String? value, {String? dialCode}) {
    if (value == null || value.trim().isEmpty) {
      return 'من فضلك أدخل رقم هاتفك';
    }

    final cleanedValue = value.trim();

    if (dialCode == '+20') {
      final regex = RegExp(r'^(10|11|12|15)\d{8}$');
      if (!regex.hasMatch(cleanedValue)) {
        return 'رقم الهاتف المصري غير صحيح';
      }
    } else if (dialCode == '+966') {
      final regex = RegExp(r'^5\d{8}$');
      if (!regex.hasMatch(cleanedValue)) {
        return 'رقم الهاتف السعودي غير صحيح';
      }
    } else {
      final regex = RegExp(r'^\d{7,}$');
      if (!regex.hasMatch(cleanedValue)) {
        return 'رقم الهاتف غير صحيح';
      }
    }

    return null;
  }

  // Logger
  static Logger logger = Logger(
      printer: PrettyPrinter(colors: true, printEmojis: true, methodCount: 0));

  // Check User Existence
  static Future<bool> checkIfUserLoggedIn() async {
    final token = await PreferencesHelper.getToken();
    return token != null;
  }

  static logout(BuildContext context) {
    PreferencesHelper.saveToken(token: null);
    // Navigator.of(context, rootNavigator: true)
    //     .pushNamedAndRemoveUntil(AppRoutesNames.login, (route) => false);
  }

}