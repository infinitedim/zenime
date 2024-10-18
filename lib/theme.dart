import 'package:flutter/material.dart';
import 'package:zenime/constant/constant.dart';

class ZenimeTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        error: const Color(0xFFDC2626),
        surface: kBlackColor,
        seedColor: const Color(0xFFF9CB55),
        primary: const Color(0xFFF9CB55),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        error: const Color(0xFFDC2626),
        surface: kWhiteColor,
        seedColor: const Color(0xFF802B00),
        primary: const Color(0xFF802B00),
      ),
    );
  }
}
