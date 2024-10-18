// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/handlers/auth_handlers.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      initState: (state) {},
      builder: (controller) {
        return Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              onChanged: (value) {
                controller.emailController.text = value;
                controller.email = value;
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: const FaIcon(FontAwesomeIcons.envelope),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFormField(
              obscureText: controller.isPasswordHide ? true : false,
              onChanged: (value) {
                controller.passwordController.text = value;
                controller.password = value;
              },
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: const FaIcon(FontAwesomeIcons.lock),
                ),
                suffixIcon: Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {
                      controller.isPasswordHide = !controller.isPasswordHide;
                    },
                    icon: FaIcon(
                      controller.isPasswordHide
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            TextFormField(
              obscureText: controller.isConfirmPasswordHide ? true : false,
              onChanged: (value) {
                controller.confirmPasswordController.text = value;
                controller.confirmPassword = value;
              },
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              controller: controller.confirmPasswordController,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-enter your password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: const FaIcon(FontAwesomeIcons.lock),
                ),
                suffixIcon: Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: FaIcon(
                      controller.isConfirmPasswordHide
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                    ),
                    onPressed: () {
                      controller.isConfirmPasswordHide =
                          !controller.isConfirmPasswordHide;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            CustomButton(
              text: 'Register',
              onPressed: () {
                AuthHandlers.handleRegister(controller).then((value) {
                  FocusScope.of(context).unfocus();
                });
              },
            ),
          ],
        );
      },
    );
  }
}
