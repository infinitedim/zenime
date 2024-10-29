import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:zenime/APIs/api_services.dart';
import 'package:zenime/model/anime/anime.dart';
import 'package:zenime/model/anime/anime_episodes.dart';
import 'package:zenime/model/anime/top_anime.dart';

class AnimeController extends GetxController {
  List<Anime?>? _topAnimes;
  List<Anime?>? get topAnimes => _topAnimes;
  set topAnimes(List<Anime?>? value) {
    _topAnimes = value;
    update();
  }

  AnimeDetail? _animeDetail;
  AnimeDetail? get animeDetail => _animeDetail;
  set animeDetail(AnimeDetail? value) {
    _animeDetail = value;

    update();
  }

  List<AnimeEpisode?>? _animeEpisodes = [];
  List<AnimeEpisode?>? get animeEpisodes => _animeEpisodes;
  set animeEpisodes(List<AnimeEpisode?>? value) {
    _animeEpisodes = value;

    update();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;

    update();
  }

  bool _isRecommendationAnimeLoading = false;
  bool get isRecommendationAnimeLoading => _isRecommendationAnimeLoading;
  set isRecommendationAnimeLoading(bool value) {
    _isRecommendationAnimeLoading = value;

    update();
  }

  Future<bool> getTopAnime() async {
    final Completer completer = Completer();
    final response = ApiService<Anime>().getTopAnime();

    isLoading = true;
    response(
      onSuccess: (response) {
        if (response != null) {
          isLoading = false;
          topAnimes = response;
        }
        completer.complete(true);
      },
      defaultErrorHandler: (errorMessage) {
        if (kDebugMode) {
          print(errorMessage);
        }
        isLoading = false;
        completer.completeError(false);
      },
    );

    return await completer.future;
  }

  Future<bool> getAnimeFullById({required int id}) async {
    Completer completer = Completer();
    final response = ApiService<AnimeDetail>().getAnimeFullById(id: id);

    response(
      onSuccess: (response) {
        if (response != null) {
          animeDetail = response;
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

  Future<bool> getAnimeEpisodes({required int id}) async {
    Completer completer = Completer();
    final response = ApiService<AnimeEpisode?>().getAnimeEpisodes(id: id);

    response(
      onSuccess: (response) {
        if (response != null || response != []) {
          animeEpisodes = response;
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
    if (topAnimes == null) {
      getTopAnime();
    }
  }
}
