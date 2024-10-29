import 'package:flutter/material.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/view/widgets/detail/poster/anime_poster.dart';
import 'package:zenime/view/widgets/detail/poster/manga_poster.dart';

class DetailPoster extends StatelessWidget {
  const DetailPoster.anime({
    super.key,
  }) : type = ZenimeType.anime;

  const DetailPoster.manga({
    super.key,
  }) : type = ZenimeType.manga;

  final ZenimeType type;

  @override
  Widget build(BuildContext context) {
    Map<ZenimeType, Widget> poster = {
      ZenimeType.anime: AnimePoster(),
      ZenimeType.manga: MangaPoster(),
    };

    return poster[type] ?? Container();
  }
}
