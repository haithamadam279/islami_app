import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setEligibility() async {
    await _prefs.setBool("onboarding_seen", true);
  }

  static bool getEligibility() {
    return _prefs.getBool("onboarding_seen") ?? false;
  }
}
