import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/settings/credit_settings_menu_button.dart';
import 'package:zenime/view/widgets/settings/delete_account/delete_account_menu_button.dart';
import 'package:zenime/view/widgets/settings/logout_menu_button.dart';
import 'package:zenime/view/widgets/settings/theme_settings_menu_button.dart';
import 'package:zenime/view/widgets/shared/bottom_navigation_bar.dart';

class SettingsPage extends GetView<ThemeController> {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.reggaeOne(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(home);
          },
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const ThemeSettingsMenuButton(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const CreditSettingsMenuButton(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            LogoutMenuButton(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DeleteAccountMenuButton(),
          ],
        ),
      ),
      bottomNavigationBar: const ZenimeBottomNavigationBar(index: 2),
    );
  }
}
