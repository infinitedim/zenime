import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/home/recommendation_list_widget.dart';

class RecommendationAnime extends StatelessWidget {
  const RecommendationAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimeController>(
      init: AnimeController(),
      initState: (initState) {
        if (initState.controller?.topAnimes == null) {
          initState.controller?.getTopAnime();
        }
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
                        fontSize:
                            Theme.of(context).textTheme.headlineSmall?.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(explore, arguments: 0);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.arrowRight,
                        size:
                            Theme.of(context).textTheme.headlineSmall?.fontSize,
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
                            if (controller.animeDetail != null) {
                              controller.animeDetail = null;
                            }

                            Get.toNamed(
                              animeDetail,
                              arguments: malId,
                            );
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
