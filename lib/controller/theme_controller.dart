import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenime/helpers/helpers.dart';

class ThemeController extends GetxController {
  final SharedPreferences sharedPreferences;

  ThemeController({required this.sharedPreferences}) {
    _loadThemePreference();

    update();
  }

  ThemeMode _mode = ThemeMode.dark;
  ThemeMode get mode => _mode;
  set mode(ThemeMode value) {
    _mode = value;

    update();
  }

  bool _isDarkMode = true;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;

    update();
  }

  Brightness? _brightness;
  Brightness? get brightness => _brightness;
  set brightness(Brightness? value) {
    _brightness = null;
    _brightness = value;

    update();
  }

  Future<void> _saveThemePreference(bool isDark, ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isDarkMode',
        mode == ThemeMode.system ? brightness == Brightness.dark : false);

    await prefs.setBool('isDarkMode', isDark);
    await prefs.setString(
        'themeMode', Helpers.generateStringFromThemeMode(mode));

    update();
  }

  Future<void> _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool('isDarkMode', isDarkMode);
    prefs.setString('themeMode', Helpers.generateStringFromThemeMode(mode));

    bool isDark = prefs.getBool('isDarkMode') ?? true;
    String theme = prefs.getString('themeMode') ?? 'system';

    isDarkMode = isDark;
    mode = Helpers.generateThemeModeFromString(theme);

    update();
  }

  void setThemeToDark() {
    isDarkMode = true;
    _saveThemePreference(true, ThemeMode.dark);
    Get.changeThemeMode(ThemeMode.dark);

    update();
  }

  void setThemeToLight() {
    isDarkMode = false;
    _saveThemePreference(false, ThemeMode.light);
    Get.changeThemeMode(ThemeMode.light);

    update();
  }

  void setThemeToSystem() {
    bool systemMode =
        mode == ThemeMode.system ? brightness == Brightness.dark : false;

    isDarkMode = systemMode;

    _saveThemePreference(systemMode, ThemeMode.system);
    Get.changeThemeMode(ThemeMode.system);

    update();
  }

  @override
  void onInit() {
    super.onInit();
    _loadThemePreference();

    update();
  }
}
