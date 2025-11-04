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

  /// app language
  static Future<void> saveLang({required String? lang}) async {
    _preferences?.setBool("hasLang", lang != null);
  }

  static bool? hasLang() {
    return _preferences?.getBool('hasLang');
  }

  // static Future<void> saveAppLanguage({required String language}) async {
  //   _preferences?.setString("selectedLanguage", language);
  // }
  //
  // static String? getAppLanguage() {
  //   return _preferences?.getString("selectedLanguage");
  // }
}
