import 'package:flutter/material.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/view/widgets/home/recommendation_anime.dart';
import 'package:zenime/view/widgets/home/recommendation_manga.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget.anime({super.key}) : type = ZenimeType.anime;
  const RecommendationWidget.manga({super.key}) : type = ZenimeType.manga;

  final ZenimeType type;

  @override
  Widget build(BuildContext context) {
    Map<ZenimeType, Widget> widget = {
      ZenimeType.anime: RecommendationAnime(),
      ZenimeType.manga: RecommendationManga()
    };

    return widget[type] ?? Container();
  }
}
