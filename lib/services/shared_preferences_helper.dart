import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static Future<List<String>?> getInfo(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(name);
  }

  static Future<void> setInfoList(List<String> infoUser,String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(name, infoUser);
  }

  static Future<void> clearInfo(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(name);
  }
}
