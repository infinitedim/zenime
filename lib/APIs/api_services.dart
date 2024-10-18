import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:zenime/constant/constant.dart';
import 'package:zenime/model/anime/anime.dart';
import 'package:zenime/model/anime/anime_episodes.dart';
import 'package:zenime/model/anime/top_anime.dart';
import 'package:zenime/model/manga/top_manga.dart';

class ApiService<T> {
  ApiService({this.body})
      : headers = {
          "Content-Type": "application/json",
        };

  final Map<String, String> headers;
  final Map<String, dynamic>? body;

  Function({
    required void Function(List<T?>? response) onSuccess,
    required void Function(String? errorMessage) defaultErrorHandler,
  }) getTopAnime() {
    return ({
      required void Function(List<T?>? response) onSuccess,
      required void Function(String? errorMessage) defaultErrorHandler,
    }) async {
      const String url = "$apiUrl/top/anime";

      return http.get(Uri.parse(url), headers: headers).then((value) {
        debugPrint('${json.decode(value.body)['data'][0]}');
        onSuccess(
          (json.decode(value.body)['data'] as List?)
              ?.map((element) =>
                  Anime?.fromMap(element as Map<String, dynamic>) as T?)
              .cast<T?>()
              .toList(),
        );
      }).catchError((error) {
        defaultErrorHandler('Error: $error');
      });
    };
  }

  Function({
    required void Function(List<T?>? response) onSuccess,
    required void Function(String? errorMessage) defaultErrorHandler,
  }) getTopManga() {
    return ({
      required void Function(List<T?>? response) onSuccess,
      required void Function(String? errorMessage) defaultErrorHandler,
    }) async {
      const String url = "$apiUrl/top/manga";

      http.get(Uri.parse(url), headers: headers).then((value) {
        onSuccess(
          (json.decode(value.body)['data'] as List?)
              ?.map((element) =>
                  Manga.fromMap(element as Map<String, dynamic>) as T?)
              .cast<T?>()
              .toList(),
        );
      }).catchError((error) {
        defaultErrorHandler('Error: $error');
      });
    };
  }

  Function({
    required void Function(List<T?>? response) onSuccess,
    required void Function(String? errorMessage) defaultErrorHandler,
  }) getAnimeEpisodes({required int id}) {
    return ({
      required void Function(List<T?>? response) onSuccess,
      required void Function(String? errorMessage) defaultErrorHandler,
    }) async {
      final String url = "$apiUrl/anime/$id/episodes";

      http.get(Uri.parse(url), headers: headers).then((value) {
        onSuccess(
          (json.decode(value.body)['data'] as List?)
              ?.map((element) =>
                  AnimeEpisode.fromMap(element as Map<String, dynamic>) as T?)
              .cast<T?>()
              .toList(),
        );
      }).catchError((error) {
        defaultErrorHandler('Error: $error');
      });
    };
  }

  Function({
    required void Function(T? response) onSuccess,
    required void Function(String? errorMessage) defaultErrorHandler,
  }) getAnimeFullById({required int id}) {
    return ({
      required void Function(T? response) onSuccess,
      required void Function(String? errorMessage) defaultErrorHandler,
    }) async {
      final String url = "$apiUrl/anime/$id/full";

      http.get(Uri.parse(url), headers: headers).then((value) {
        if (kDebugMode) {
          print(json.decode(value.body)['data']);
        }
        onSuccess(
          (json.decode(value.body)['data'])
              .then((value) => AnimeDetail.fromMap(value))
              .cast<T?>(),
        );
      }).catchError((error) {
        defaultErrorHandler('Error: $error');
      });
    };
  }
}
