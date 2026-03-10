import 'package:loginapi_pekan5/constants/app_constans.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  Future<void> saveSession(String accessToken) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(AppConstans.tokenKey, accessToken);
  }

  Future<String> getAccessToken() async {
    final pref = await SharedPreferences.getInstance();
    final accessToken = pref.getString(AppConstans.tokenKey);
    return accessToken ?? '';
  }

  Future<void> removeAccessToken() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(AppConstans.tokenKey);
  }
}
