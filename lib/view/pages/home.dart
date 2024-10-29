import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/home/recommendation_widget.dart';
import 'package:zenime/view/widgets/shared/app_bar.dart';
import 'package:zenime/view/widgets/shared/bottom_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime? currentBackPressTime;

    return GetBuilder<AnimeController>(
      init: AnimeController(),
      initState: (initState) {
        if (initState.controller?.topAnimes == null) {
          initState.controller?.getTopAnime();
        }
      },
      builder: (controller) {
        Random rand = Random();
        int index = rand.nextInt(controller.topAnimes?.length ?? 1);

        return Scaffold(
          appBar: PreferredSize(
            preferredSize: MediaQuery.of(context).size * 0.070,
            child: ZenimeAppBar(
              title: controller.topAnimes?[index]?.title ?? 'Yuyu hakusho',
            ),
          ),
          body: PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              Helpers.pop(didPop, result, currentBackPressTime);
            },
            child: SingleChildScrollView(
              child: Container(
                width: SizeConfig.screenWidth,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    RecommendationWidget.anime(),
                    SizedBox(height: 30),
                    RecommendationWidget.manga(),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: const ZenimeBottomNavigationBar(index: 0),
        );
      },
    );
  }
}
