import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  static SharedPreferences? _preferences;
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  /// Token
  static Future<void> saveToken({required String? token}) async {
    await _secureStorage.write(key: "token", value: token);
    _preferences?.setBool("hasToken", token != null);
  }

  static Future<void> deleteToken() async {
    await _secureStorage.delete(key: "token");
    _preferences?.setBool("hasToken", false);
  }

  static bool? hasToken() {
    return _preferences?.getBool('hasToken');
  }

  static Future<String?> getToken() async {
    return await _secureStorage.read(key: "token");
  }

  /// Onboarding Viewed
  static Future<void> markOnboardingAsViewed() async {
    await _preferences?.setBool("Onboarding viewed", true);
  }

  static bool? checkViewedOnboarding() {
    return _preferences?.getBool("Onboarding viewed");
  }

  static Future<void> setAccountAsVerified() async {
    await _preferences?.setBool("Verified Account", true);
  }

  static bool? isAccountVerified() {
    return _preferences?.getBool("Verified Account");
  }

}