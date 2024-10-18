import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/controller/manga_controller.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';

class RecommendationWidget extends GetView {
  const RecommendationWidget({super.key, required this.isAnime});

  final bool isAnime;

  @override
  Widget build(BuildContext context) {
    if (isAnime) {
      return GetBuilder<AnimeController>(
        init: AnimeController(),
        initState: (initState) {
          initState.controller?.getTopAnime();
        },
        builder: (controller) {
          return Skeletonizer(
            enabled: controller.isLoading,
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Anime Recommendation',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(explore);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          size: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.fontSize,
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight / 2,
                    width: SizeConfig.screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(10, (index) {
                          Random random = Random();
                          int randomIndex =
                              random.nextInt(controller.topAnimes?.length ?? 1);

                          String title =
                              controller.topAnimes?[randomIndex]?.title ??
                                  'kosong';
                          String image = controller.topAnimes?[randomIndex]
                                  ?.images?['jpg']['image_url'] ??
                              '';
                          int episodes =
                              controller.topAnimes?[randomIndex]?.episodes ?? 0;

                          int? malId =
                              controller.topAnimes?[randomIndex]?.malId ?? 0;

                          return RecommendationListWidget(
                            title: title,
                            image: image,
                            episodes: episodes,
                            isAnime: true,
                            isLoading: controller.isLoading,
                            onTap: () {
                              if (kDebugMode) {
                                print(malId);
                              }
                              // controller.getAnimeFullById(id: malId);
                              Get.toNamed(detail);
                            },
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    } else {
      return GetBuilder<MangaController>(
        init: MangaController(),
        dispose: (state) {},
        initState: (initState) {
          initState.controller?.getTopManga();
        },
        builder: (controller) {
          return Skeletonizer(
            enabled: controller.isLoading,
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Manga Recommendation',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed(explore);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight / 2,
                    width: SizeConfig.screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(10, (index) {
                          Random random = Random();

                          int randomIndex =
                              random.nextInt(controller.topMangas?.length ?? 1);
                          String title =
                              controller.topMangas?[randomIndex]?.title ??
                                  'kosong';
                          String image = controller.topMangas?[randomIndex]
                                  ?.images?['jpg']['image_url'] ??
                              '';
                          int chapters =
                              controller.topMangas?[randomIndex]?.chapters ?? 0;

                          int malId =
                              controller.topMangas?[randomIndex]?.malId ?? 0;

                          return RecommendationListWidget(
                            title: title,
                            image: image,
                            episodes: chapters,
                            isAnime: false,
                            isLoading: controller.isLoading,
                            onTap: () {
                              if (kDebugMode) {
                                print(malId);
                              }
                            },
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class RecommendationListWidget extends GetView<ThemeController> {
  const RecommendationListWidget({
    super.key,
    required this.title,
    required this.image,
    this.episodes,
    required this.isAnime,
    required this.isLoading,
    required this.onTap,
  });

  final String title;
  final String image;
  final int? episodes;
  final bool isAnime;
  final bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: SizedBox(
        width: SizeConfig.screenWidth - 100,
        child: ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.all(5),
          title: Text(
            Helpers.truncateString(
              text: title,
              maxChar: 20,
            ),
            style: GoogleFonts.inter(
              fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              if (image != '' && image.isNotEmpty)
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: Image.network(
                    image,
                    height: SizeConfig.screenHeight / 2.5,
                    width: SizeConfig.screenWidth,
                    fit: BoxFit.fill,
                  ),
                )
              else
                Container(
                  height: SizeConfig.screenHeight / 2.5,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.grey.shade200.withOpacity(0.2),
                  ),
                ),
              const SizedBox(height: 10),
              if (episodes != 0)
                Text(
                  '$episodes ${isAnime ? "Episodes" : "Chapters"}',
                  style: GoogleFonts.reggaeOne(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
                  ),
                ),
              if (episodes == 0)
                Text(
                  '-',
                  style: GoogleFonts.reggaeOne(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
            ],
          ),
          // child: Container(
          //   width: SizeConfig.screenWidth - 100,
          //   padding: const EdgeInsets.symmetric(horizontal: 5),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       if (image != '' && image.isNotEmpty)
          //         ClipRRect(
          //           borderRadius: const BorderRadius.all(
          //             Radius.circular(8),
          //           ),
          //           child: Image.network(
          //             image,
          //             height: SizeConfig.screenHeight / 2.5,
          //             width: SizeConfig.screenWidth - 100,
          //             fit: BoxFit.fill,
          //           ),
          //         ),
          //       if (image == '' && image.isEmpty)
          //         ClipRRect(
          //           borderRadius: const BorderRadius.all(
          //             Radius.circular(8),
          //           ),
          //           child: SizedBox(
          //             height: SizeConfig.screenHeight / 2.5,
          //             width: SizeConfig.screenWidth - 100,
          //           ),
          //         ),
          //       const SizedBox(height: 10),
          //       Text(
          //         Helpers.truncateString(
          //           text: title.replaceAll(';', ' '),
          //           maxChar: 30,
          //         ),
          //         style: GoogleFonts.inter(
          //           fontWeight: FontWeight.w700,
          //         ),
          //       ),
          //       const SizedBox(height: 5),
          //       Text(
          //         '$episodes ${isAnime ? "Episodes" : "Chapters"}',
          //         style: TextStyle(
          //           color: Theme.of(context).textTheme.bodyLarge?.color,
          //           fontSize:
          //               Theme.of(context).textTheme.labelSmall?.fontSize,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
