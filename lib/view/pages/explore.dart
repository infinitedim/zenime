import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:collection/collection.dart';
import 'package:zenime/view/widgets/explore/explore_card_widget.dart';
import 'package:zenime/view/widgets/shared/app_bar.dart';
import 'package:zenime/view/widgets/shared/bottom_navigation_bar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final AnimeController animeController = Get.find();
  bool isAnimeSelected = true;

  @override
  Widget build(BuildContext context) {
    Random rand = Random();
    int index = rand.nextInt(animeController.topAnimes?.length ?? 1);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.070,
        child: ZenimeAppBar(
          title: animeController.topAnimes?[index]?.title ?? 'Yuyu hakusho',
        ),
      ),
      onDrawerChanged: (isOpened) {
        isOpened = !isOpened;
      },
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            if (animeController.topAnimes != null)
              SizedBox(
                height: SizeConfig.screenHeight - 215,
                width: SizeConfig.screenWidth,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children:
                        animeController.topAnimes!.mapIndexed((index, element) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(detail);
                        },
                        child: ExploreCardWidget(
                          isAnime: true,
                          isLoading: animeController.isLoading,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: const ZenimeBottomNavigationBar(index: 1),
    );
  }
}
