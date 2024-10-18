import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';
import 'package:zenime/view/widgets/shared/dont_have_account_text.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final AuthController controller = Get.find();

  handleForgotPassword() async {
    final status = await controller.resetPassword(email: controller.email);
    if (status == AuthStatus.successful) {
      SnackBar(
        content: Text(
          'Reset email has been sent, check your email',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {},
        ),
        backgroundColor: Colors.green,
      );
    }
  }

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
          onPressed: handleForgotPassword,
        ),
        const SizedBox(height: 50),
        const DontHaveAccountText(),
      ],
    );
  }
}
