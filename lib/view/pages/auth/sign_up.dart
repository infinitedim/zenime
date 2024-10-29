import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/auth/sign_up_forn.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16),
              Text(
                'Register',
                style: GoogleFonts.reggaeOne(
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  height: 1.5,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Have an Account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(login);
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.reggaeOne(
                        fontSize: getProportionateScreenWidth(16),
                        color: Theme.of(context).colorScheme.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
