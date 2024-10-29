import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenime/enum/enum_collection.dart';
import 'package:zenime/view/pages/detail/detail_anime.dart';
import 'package:zenime/view/pages/detail/detail_manga.dart';

class DetailPage extends StatelessWidget {
  const DetailPage.anime({super.key}) : type = ZenimeType.anime;

  const DetailPage.manga({super.key}) : type = ZenimeType.manga;

  final ZenimeType type;

  @override
  Widget build(BuildContext context) {
    dynamic id = Get.arguments;

    if (kDebugMode) {
      print(id);
    }
    Map<ZenimeType, Widget> pages = {
      ZenimeType.anime: DetailAnime(id: id),
      ZenimeType.manga: DetailManga(id: id),
    };

    return pages[type] ?? Container();
  }
}
