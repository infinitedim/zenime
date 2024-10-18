import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';

class ZenimeDrawer extends GetView {
  const ZenimeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: SizeConfig.screenWidth * 0.8,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 40,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Zenime',
                style: GoogleFonts.reggaeOne(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
                ),
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).closeDrawer();
                },
                icon: FaIcon(
                  FontAwesomeIcons.xmark,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.toNamed(settings);
                },
                icon: FaIcon(
                  FontAwesomeIcons.gear,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(settings);
                },
                icon: FaIcon(
                  FontAwesomeIcons.rightFromBracket,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
