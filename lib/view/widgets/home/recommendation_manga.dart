import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/controller/manga_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/home/recommendation_list_widget.dart';

class RecommendationManga extends StatelessWidget {
  const RecommendationManga({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MangaController>(
      init: MangaController(),
      dispose: (state) {},
      initState: (initState) {
        if (initState.controller?.topMangas == null) {
          initState.controller?.getTopManga();
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
                      'Manga Recommendation',
                      style: GoogleFonts.inter(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(explore, arguments: 1);
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
                                ?.images?.jpg?.imageUrl ??
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
                            if (controller.mangaDetail != null) {
                              controller.mangaDetail = null;
                            }
                            Get.toNamed(mangaDetail, arguments: malId);
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
