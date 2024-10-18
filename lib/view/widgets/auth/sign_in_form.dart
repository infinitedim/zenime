import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/handlers/auth_handlers.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

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
              onChanged: (value) {
                controller.email = value;
              },
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              controller: controller.emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: const FaIcon(
                    FontAwesomeIcons.envelope,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFormField(
              obscureText: controller.isPasswordHide ? true : false,
              onChanged: (value) {
                controller.password = value;
              },
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 15.0),
                  child: const FaIcon(
                    FontAwesomeIcons.lock,
                  ),
                ),
                suffixIcon: IconButton(
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
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: <Widget>[
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(forgotPassword),
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            CustomButton(
              text: 'Login',
              onPressed: () {
                AuthHandlers.handleLogin(controller);
              },
              isLoading: controller.isLoading,
            ),
          ],
        );
      },
    );
  }
}
