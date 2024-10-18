import 'package:firebase_auth/firebase_auth.dart';
import 'package:zenime/enum/enum_collection.dart';

class AuthExceptionHandler {
  static AuthStatus handleAuthException(FirebaseAuthException error) {
    AuthStatus? status;
    final exceptionMap = {
      'invalid-email': AuthStatus.invalidEmail,
      'wrong-password': AuthStatus.wrongPassword,
      'weak-password': AuthStatus.weakPassword,
      'email-already-in-use': AuthStatus.emailAlreadyExists,
    };

    status = exceptionMap[error.code];

    return status ?? AuthStatus.unknown;
  }

  static String generateErrorMessage(AuthStatus error) {
    const errorMessages = {
      AuthStatus.invalidEmail: "Your email address appears to be malformed.",
      AuthStatus.weakPassword: "Your password should be at least 6 characters.",
      AuthStatus.wrongPassword: "Your email or password is wrong.",
      AuthStatus.emailAlreadyExists:
          "The email address is already in use by another account.",
    };

    return errorMessages[error]?.toString() ??
        "An error occured. Please try again later.";
  }
}
