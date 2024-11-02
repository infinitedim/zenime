import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';

class DeleteAccountModalBottomSheet extends GetView<AuthController> {
  const DeleteAccountModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: SizeConfig.screenHeight / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              ),
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            top: -20,
            right: -5,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              ),
              height: 70,
              width: 70,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: FaIcon(
              FontAwesomeIcons.triangleExclamation,
              color: Theme.of(context).colorScheme.error.withOpacity(0.2),
              size: 150,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: SizeConfig.screenHeight / 3,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delete account',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: FaIcon(FontAwesomeIcons.xmark),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.2),
                ),
                Container(
                  alignment: Alignment.center,
                  height: SizeConfig.screenHeight / 3 - 64,
                  child: Column(
                    children: [
                      Spacer(),
                      Text(
                        'Are you sure to delete your account',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        text: "Delete account",
                        isLoading: controller.isLoading,
                        height: 50,
                        onPressed: () {
                          controller.isLoading = true;
                          controller.deleteUserAccount().then((value) {
                            Future.delayed(Duration(milliseconds: 500), () {
                              controller.isLoading = false;
                              Get.offAndToNamed(login);
                            });
                          });
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
