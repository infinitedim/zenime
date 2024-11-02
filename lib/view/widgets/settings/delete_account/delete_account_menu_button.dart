import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/view/widgets/settings/delete_account/delete_account_modal_bottom_sheet.dart';

class DeleteAccountMenuButton extends GetView<ThemeController> {
  const DeleteAccountMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return DeleteAccountModalBottomSheet();
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: controller.isDarkMode
              ? Colors.grey.withOpacity(0.3)
              : Theme.of(context).colorScheme.primary.withOpacity(0.4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.userMinus,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Text(
                  'Delete Account',
                  style: GoogleFonts.inter(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
