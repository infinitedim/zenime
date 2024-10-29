import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zenime/routes/routes.dart';

class ZenimeBottomNavigationBar extends GetView {
  const ZenimeBottomNavigationBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems =
        <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.houseChimneyUser,
        ),
        label: 'home',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.fire,
        ),
        label: 'explore',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).colorScheme.primary,
        icon: const FaIcon(
          FontAwesomeIcons.gears,
        ),
        label: 'settings',
      ),
    ];

    List<String> bottomNavigationBarRoute = [
      home,
      explore,
      settings,
    ];

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      items: bottomNavigationBarItems,
      currentIndex: index,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.primary,
      onTap: (index) {
        if (index == 1) {
          Get.toNamed(
            bottomNavigationBarRoute[index],
            arguments: 0,
          );
        }
        Get.toNamed(
          bottomNavigationBarRoute[index],
        );
      },
    );
  }
}
