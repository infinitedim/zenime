import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Helpers {
  static ThemeMode generateThemeModeFromString(String value) {
    ThemeMode? mode;
    Map<String, ThemeMode> themeMode = {
      "dark": ThemeMode.dark,
      "light": ThemeMode.light,
      "system": ThemeMode.system,
    };

    mode = themeMode[value] ?? ThemeMode.system;
    return mode;
  }

  static String generateStringFromThemeMode(ThemeMode value) {
    String? mode;

    Map<ThemeMode, String> themeMode = {
      ThemeMode.dark: "dark",
      ThemeMode.light: "light",
      ThemeMode.system: "system",
    };

    mode = themeMode[value] ?? "system";

    return mode;
  }

  static void pop(didPop, result, currentBackPressTime) async {
    if (!didPop) {
      DateTime now = DateTime.now();
      bool isBackPressDiffTimeLessThanTwoSecond = currentBackPressTime ==
              null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2);

      if (isBackPressDiffTimeLessThanTwoSecond) {
        currentBackPressTime = now;
        Helpers.errorToast('press again to exit');
      } else {
        SystemNavigator.pop();
      }
    }
  }

  static String truncateString({
    required String text,
    int maxChar = 10,
    bool withDot = true,
  }) {
    if (text.length > maxChar) {
      return withDot
          ? '${text.substring(0, maxChar)}...'
          : text.substring(0, maxChar);
    }

    return text;
  }

  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void errorToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  static void successToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
