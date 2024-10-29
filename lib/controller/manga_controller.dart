import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:zenime/APIs/api_services.dart';
import 'package:zenime/model/manga/manga.dart';
import 'package:zenime/model/manga/top_manga.dart';

class MangaController extends GetxController {
  List<Manga?>? _topMangas;
  List<Manga?>? get topMangas => _topMangas;
  set topMangas(List<Manga?>? value) {
    _topMangas = value;
    update();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;

    update();
  }

  MangaDetail? _mangaDetail;
  MangaDetail? get mangaDetail => _mangaDetail;
  set mangaDetail(MangaDetail? value) {
    _mangaDetail = value;

    update();
  }

  Future<bool> getTopManga() async {
    final Completer completer = Completer();
    final response = ApiService<Manga>().getTopManga();

    isLoading = true;
    response(
      onSuccess: (response) {
        if (response != null) {
          Future.delayed(const Duration(seconds: 2), () {
            isLoading = false;
          });
          topMangas = response;
        }
        completer.complete(true);
      },
      defaultErrorHandler: (errorMessage) {
        isLoading = false;
        completer.completeError(false);
      },
    );

    return await completer.future;
  }

  Future<bool> getMangaFullById({required int id}) async {
    Completer completer = Completer();
    final response = ApiService<MangaDetail>().getMangaFullById(id: id);

    response(
      onSuccess: (response) {
        if (response != null) {
          mangaDetail = response;
        }
        completer.complete(true);
      },
      defaultErrorHandler: (errorMessage) {
        if (kDebugMode) {
          print(errorMessage);
        }
        completer.completeError(false);
      },
    );

    return await completer.future;
  }

  @override
  void onInit() {
    super.onInit();

    if (topMangas == null) {
      getTopManga();
    }
  }
}
