import 'package:flutter/material.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/model/anime/top_anime.dart';
import 'package:zenime/model/manga/top_manga.dart';
import 'package:zenime/view/widgets/explore/explore_card_anime.dart';
import 'package:zenime/view/widgets/explore/explore_card_manga.dart';

class ExploreCardWidget extends StatelessWidget {
  const ExploreCardWidget.anime({
    super.key,
    required this.isLoading,
    required this.anime,
    this.manga,
  }) : type = ZenimeType.anime;

  const ExploreCardWidget.manga({
    super.key,
    required this.isLoading,
    required this.manga,
    this.anime,
  }) : type = ZenimeType.manga;

  final bool isLoading;
  final ZenimeType type;
  final Anime? anime;
  final Manga? manga;

  @override
  Widget build(BuildContext context) {
    Map<ZenimeType, Widget> card = {
      ZenimeType.anime: ExploreCardAnime(
        isLoading: isLoading,
        anime: anime,
      ),
      ZenimeType.manga: ExploreCardManga(
        isLoading: isLoading,
        manga: manga,
      ),
    };

    return card[type] ?? Container();
  }
}
