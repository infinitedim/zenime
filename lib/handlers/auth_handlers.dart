import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/routes/routes.dart';

class AuthHandlers {
  static Future<void> handleRegister(AuthController controller) async {
    RegExp oneCapital = RegExp(r'[A-Z]');
    RegExp oneSpecialChar = RegExp(r'[^a-zA-Z0-9]');

    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!EmailValidator.validate(controller.email)) {
      Fluttertoast.showToast(
        msg: 'Email invalid',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (controller.password.length < 8) {
      Fluttertoast.showToast(
        msg: 'The password must be great than 8',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (controller.password.length > 20) {
      Fluttertoast.showToast(
        msg: 'The password must be less than 20',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (!oneCapital.hasMatch(controller.password)) {
      Fluttertoast.showToast(
        msg: 'The password must be contain one capital letter',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (!oneSpecialChar.hasMatch(controller.password)) {
      Fluttertoast.showToast(
        msg: 'The password must be contain one special character',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (controller.password != controller.confirmPassword) {
      Fluttertoast.showToast(
        msg:
            'The password and confirmation password must match, like you and me. 😉',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }

    if (controller.password == controller.confirmPassword &&
        oneCapital.hasMatch(controller.password) &&
        oneSpecialChar.hasMatch(controller.password)) {
      controller.signUp(
        email: controller.email,
        password: controller.password,
      );
      if (prefs.getBool('hasLoggedIn')!) {
        Get.toNamed(home);
      }
    }
  }

  static Future<void> handleLogin(AuthController controller) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    controller.isLoading = true;

    Future.delayed(Duration(milliseconds: 300), () {
      controller.signIn(
        email: controller.email,
        password: controller.password,
      );

      if (prefs.getBool('hasLoggedIn')!) {
        Get.toNamed(home);
      }
    });
  }

  static void handleForgotPassword(AuthController controller) async {
    final status = await controller.resetPassword(email: controller.email);
    if (status == AuthStatus.successful) {
      Fluttertoast.showToast(
        msg: 'Reset email has been sent, check your email',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
