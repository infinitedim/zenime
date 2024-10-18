import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/constant/constant.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({super.key});

  @override
  State<ChangeThemePage> createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  ThemeController controller = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(settings);
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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 2.5),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: controller.isDarkMode
                            ? kWhiteColor.withOpacity(0.8)
                            : kBlackColor.withOpacity(0.2),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: const Skeletonizer(
                        enabled: true,
                        enableSwitchAnimation: true,
                        child: Column(
                          children: [
                            Card(
                              color: Colors.white,
                              child: ListTile(
                                title: Text(
                                  'Light theme',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text('light theme'),
                                trailing: Icon(Icons.ac_unit),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('light'),
                      leading: Radio<bool>(
                        value: false,
                        groupValue: controller.isDarkMode,
                        onChanged: (bool? value) {
                          controller.setThemeToLight();
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 2.5),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: controller.isDarkMode
                            ? kWhiteColor.withOpacity(0.2)
                            : kBlackColor.withOpacity(0.2),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: const Skeletonizer(
                        enabled: true,
                        child: Column(
                          children: [
                            Card(
                              color: Colors.black,
                              child: ListTile(
                                title: Text('Light theme'),
                                subtitle: Text('light theme'),
                                trailing: Icon(Icons.ac_unit),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('dark'),
                      leading: Radio<bool>(
                        value: true,
                        groupValue: controller.isDarkMode,
                        onChanged: (bool? value) {
                          controller.setThemeToDark();
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
