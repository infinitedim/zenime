import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/routes/routes.dart';

class AuthHandlers {
  static Future<void> handleRegister(AuthController controller) async {
    RegExp oneCapital = RegExp(r'[A-Z]');
    RegExp oneSpecialChar = RegExp(r'[^a-zA-Z0-9]');

    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!EmailValidator.validate(controller.email)) {
      Helpers.errorToast('Invalid Email');
    }

    if (controller.password.length < 8) {
      Helpers.errorToast('The password must be great than 8');
    }

    if (controller.password.length > 20) {
      Helpers.errorToast('The password must be less than 20');
    }

    if (!oneCapital.hasMatch(controller.password)) {
      Helpers.errorToast('The password must be contain one capital letter');
    }

    if (!oneSpecialChar.hasMatch(controller.password)) {
      Helpers.errorToast('The password must be contain one special character');
    }

    if (controller.password != controller.confirmPassword) {
      Helpers.errorToast(
        'The password and confirmation password must match, like you and me. 😉',
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

    if (!EmailValidator.validate(controller.email)) {
      Helpers.errorToast('Invalid Email');
    }

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
    if (EmailValidator.validate(controller.email)) {
      Helpers.errorToast('Invalid Email');
    }
    final status = await controller.resetPassword(email: controller.email);
    if (status == AuthStatus.successful) {
      Helpers.successToast('Reset email has been sent, check your email');
    }
  }
}
