import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class Themes {

  static final darkMode = ThemeData(
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.black54,
      primaryColor: Colors.black,
      brightness: Brightness.dark
  );

  static final lightMode = ThemeData(
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    brightness: Brightness.light
  );

}

class ThemeServices {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  bool get loadTheme => _box.read(_key) ?? false;
  ThemeMode get theme => loadTheme ? ThemeMode.dark : ThemeMode.light;
  void toggleTheme() {
    Get.changeThemeMode(loadTheme ? ThemeMode.light : ThemeMode.dark);
    _saveTheme(!loadTheme);
  }
  void _saveTheme(bool val) {
    _box.write(_key, val);
  }
}
