import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/auth/sign_in_form.dart';
import 'package:zenime/view/widgets/shared/dont_have_account_text.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final AuthController controller = Get.find();
  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        Helpers.pop(didPop, result, currentBackPressTime);
      },
      child: Scaffold(
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: GoogleFonts.reggaeOne(
                    fontSize: getProportionateScreenWidth(40),
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SingleChildScrollView(
                  child: SignInForm(),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const DontHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
