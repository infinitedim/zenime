import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/handlers/auth_exception_handlers.dart';

class AuthController extends GetxController with GetxServiceMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  static final auth = FirebaseAuth.instance;
  late SharedPreferences _prefs;

  final Rx<User?> _user = Rx<User?>(null);

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    update();
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    update();
  }

  AuthStatus _authStatus = AuthStatus.unknown;
  AuthStatus get authStatus => _authStatus;
  set authStatus(AuthStatus value) {
    _authStatus = value;

    update();
  }

  String _confirmPassword = '';
  String get confirmPassword => _confirmPassword;
  set confirmPassword(String value) {
    _confirmPassword = value;
    update();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;

    update();
  }

  bool _hasLoggedIn = false;
  bool get hasLoggedIn => _hasLoggedIn;
  set hasLoggedIn(bool value) {
    _hasLoggedIn = value;

    update();
  }

  bool _isPasswordHide = true;
  bool get isPasswordHide => _isPasswordHide;
  set isPasswordHide(bool value) {
    _isPasswordHide = value;

    update();
  }

  bool _isConfirmPasswordHide = true;
  bool get isConfirmPasswordHide => _isConfirmPasswordHide;
  set isConfirmPasswordHide(bool value) {
    _isConfirmPasswordHide = value;

    update();
  }

  void _setInitialScreen(User? user) async {
    final routeName = _prefs.getBool('hasLoggedIn') ?? hasLoggedIn
        ? '/home'
        : user != null
            ? '/home'
            : '/login';
    Get.offAllNamed(routeName);
  }

  Future<AuthStatus> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      _user.value = auth.currentUser;
      hasLoggedIn = true;
      isLoading = false;
      authStatus = AuthStatus.successful;
      return authStatus;
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
        msg: AuthExceptionHandler.generateErrorMessage(
          AuthExceptionHandler.handleAuthException(error),
        ),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return AuthExceptionHandler.handleAuthException(error);
    }
  }

  Future<AuthStatus> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      hasLoggedIn = true;
      _user.value = auth.currentUser;
      authStatus = AuthStatus.successful;
      return authStatus;
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
        msg: AuthExceptionHandler.generateErrorMessage(authStatus),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return AuthExceptionHandler.handleAuthException(error);
    }
  }

  Future<AuthStatus> resetPassword({required String email}) async {
    await auth.sendPasswordResetEmail(email: email).then((value) {
      authStatus = AuthStatus.successful;
      return AuthStatus.successful;
    }).catchError((e) {
      Fluttertoast.showToast(
        msg: AuthExceptionHandler.generateErrorMessage(authStatus),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return AuthExceptionHandler.handleAuthException(e);
    });
    return AuthStatus.successful;
  }

  Future<AuthStatus> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      _prefs.setBool('hasLoggedIn', false);
      hasLoggedIn = false;
      _user.value = null;
      authStatus = AuthStatus.unknown;
      return authStatus;
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(
        msg: AuthExceptionHandler.generateErrorMessage(authStatus),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return AuthExceptionHandler.handleAuthException(error);
    }
  }

  @override
  void onInit() async {
    super.onInit();
    _prefs = await SharedPreferences.getInstance();
    _user.bindStream(auth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
