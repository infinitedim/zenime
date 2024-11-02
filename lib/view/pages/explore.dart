import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/controller/manga_controller.dart';
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

class _ExplorePageState extends State<ExplorePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final AnimeController animeController = Get.find();
  final MangaController mangaController = Get.find();
  int? initIndex = Get.arguments;
  bool isAnimeSelected = true;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(initialIndex: initIndex ?? 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: MediaQuery.of(context).size * 0.12,
        child: ZenimeAppBar(
          isExplore: true,
          tabController: _tabController,
        ),
      ),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TabBarView(
          controller: _tabController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                if (animeController.topAnimes != null)
                  SizedBox(
                    height: SizeConfig.screenHeight - 205,
                    width: SizeConfig.screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: animeController.topAnimes!
                            .mapIndexed((index, anime) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                animeDetail,
                                arguments: anime?.malId,
                              );
                            },
                            child: ExploreCardWidget.anime(
                              isLoading: animeController.isLoading,
                              anime: anime,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 10),
                if (mangaController.topMangas != null)
                  SizedBox(
                    height: SizeConfig.screenHeight - 205,
                    width: SizeConfig.screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: mangaController.topMangas!
                            .mapIndexed((index, manga) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                mangaDetail,
                                arguments: manga?.malId,
                              );
                            },
                            child: ExploreCardWidget.manga(
                              isLoading: animeController.isLoading,
                              manga: manga,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ZenimeBottomNavigationBar(index: 1),
    );
  }
}
