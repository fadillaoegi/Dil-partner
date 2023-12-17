import 'dart:convert';
import 'package:dilpartner/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

// CARA MENGETAHUI USER TELAH SIGN IN
class DataUserLoginLocal {
  static const userLoginKey = 'userLoginKey';

  // MENAMBAH DATA USER KE LOCAL (SHARED PREFERENCES)
  static getDataUserFromLocal() async {
    // ignore: unused_local_variable
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(userLoginKey) ?? '';

    return jsonDecode(result);
  }

  // MENYIMPAN DATA USER KE LOCAL (SHARED PREFERENCES)
  static void setDataLoginLocal(User userAccount) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(userLoginKey, jsonEncode(userAccount.toMap()));
  }
}

// CARA MENGETAHUI USER TELAH REGISTER
class DataUserRegisterLocal {
  static const userRegisterKey = 'userRegisterKey';

  static Future<bool> getUserRegister() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userRegisterKey) ?? false;
  }

  static void setRegisterLocal(bool isRegistered) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userRegisterKey, isRegistered);
  }

  static void logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(userRegisterKey);
  }
}
