import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/handlers/auth_handlers.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';
import 'package:zenime/view/widgets/shared/dont_have_account_text.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          onFieldSubmitted: (value) {
            controller.emailController.text = value;
            controller.email = value;
          },
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            controller.emailController.text = value;
            controller.email = value;
          },
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            prefixIcon: Container(
              padding: const EdgeInsets.only(top: 10, left: 15.0),
              child: const FaIcon(FontAwesomeIcons.lock),
            ),
          ),
        ),
        const SizedBox(height: 50.0),
        CustomButton(
          text: "Reset",
          onPressed: () {
            AuthHandlers.handleForgotPassword(controller);
          },
        ),
        const SizedBox(height: 50),
        const DontHaveAccountText(),
      ],
    );
  }
}
