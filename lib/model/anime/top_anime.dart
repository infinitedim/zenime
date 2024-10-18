// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:zenime/model/generic_model.dart';

class Anime {
  int? malId;
  String? url;
  Map<String, dynamic>? images;
  Trailer? trailer;
  bool? approved;
  List<Title?>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String?>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Published? aired;
  String? duration;
  String? rating;
  num? score;
  double? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  Broadcast? broadcast;
  List<Demographic?>? producers;
  List<Demographic?>? licensors;
  List<Demographic?>? studios;
  List<Demographic?>? genres;
  List<Demographic?>? explicitGenres;
  List<Demographic?>? themes;
  List<Demographic?>? demographics;

  Anime({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  Anime copyWith({
    int? malId,
    String? url,
    Map<String, dynamic>? images,
    Trailer? trailer,
    bool? approved,
    List<Title?>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String?>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Published? aired,
    String? duration,
    String? rating,
    num? score,
    double? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    Broadcast? broadcast,
    List<Demographic?>? producers,
    List<Demographic?>? licensors,
    List<Demographic?>? studios,
    List<Demographic?>? genres,
    List<Demographic?>? explicitGenres,
    List<Demographic?>? themes,
    List<Demographic?>? demographics,
  }) {
    return Anime(
      malId: malId ?? this.malId,
      url: url ?? this.url,
      images: images ?? this.images,
      trailer: trailer ?? this.trailer,
      approved: approved ?? this.approved,
      titles: titles ?? this.titles,
      title: title ?? this.title,
      titleEnglish: titleEnglish ?? this.titleEnglish,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      titleSynonyms: titleSynonyms ?? this.titleSynonyms,
      type: type ?? this.type,
      source: source ?? this.source,
      episodes: episodes ?? this.episodes,
      status: status ?? this.status,
      airing: airing ?? this.airing,
      aired: aired ?? this.aired,
      duration: duration ?? this.duration,
      rating: rating ?? this.rating,
      score: score ?? this.score,
      scoredBy: scoredBy ?? this.scoredBy,
      rank: rank ?? this.rank,
      popularity: popularity ?? this.popularity,
      members: members ?? this.members,
      favorites: favorites ?? this.favorites,
      synopsis: synopsis ?? this.synopsis,
      background: background ?? this.background,
      season: season ?? this.season,
      year: year ?? this.year,
      broadcast: broadcast ?? this.broadcast,
      producers: producers ?? this.producers,
      licensors: licensors ?? this.licensors,
      studios: studios ?? this.studios,
      genres: genres ?? this.genres,
      explicitGenres: explicitGenres ?? this.explicitGenres,
      themes: themes ?? this.themes,
      demographics: demographics ?? this.demographics,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malId': malId,
      'url': url,
      'images': images,
      'trailer': trailer?.toMap(),
      'approved': approved,
      'titles': titles?.map((x) => x?.toMap()).toList(),
      'title': title,
      'titleEnglish': titleEnglish,
      'titleJapanese': titleJapanese,
      'titleSynonyms': titleSynonyms?.map((x) => x).toList(),
      'type': type,
      'source': source,
      'episodes': episodes,
      'status': status,
      'airing': airing,
      'aired': aired?.toMap(),
      'duration': duration,
      'rating': rating,
      'score': score,
      'scoredBy': scoredBy,
      'rank': rank,
      'popularity': popularity,
      'members': members,
      'favorites': favorites,
      'synopsis': synopsis,
      'background': background,
      'season': season,
      'year': year,
      'broadcast': broadcast?.toMap(),
      'producers': producers?.map((x) => x?.toMap()).toList(),
      'licensors': licensors?.map((x) => x?.toMap()).toList(),
      'studios': studios?.map((x) => x?.toMap()).toList(),
      'genres': genres?.map((x) => x?.toMap()).toList(),
      'explicitGenres': explicitGenres?.map((x) => x?.toMap()).toList(),
      'themes': themes?.map((x) => x?.toMap()).toList(),
      'demographics': demographics?.map((x) => x?.toMap()).toList(),
    };
  }

  factory Anime.fromMap(Map<String, dynamic> map) {
    return Anime(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      url: map['url'] != null ? map['url'] as String : null,
      images: map['images'] != null
          ? Map<String, dynamic>.from(
              (map['images'] as Map<String, dynamic>),
            )
          : null,
      trailer: map['trailer'] != null
          ? Trailer.fromMap(map['trailer'] as Map<String, dynamic>)
          : null,
      approved: map['approved'] != null ? map['approved'] as bool : null,
      titles: map['titles'] != null
          ? List<Title?>.from(
              (map['titles'] as List<dynamic>).map<Title?>(
                (x) => Title?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      title: map['title'] != null ? map['title'] as String : null,
      titleEnglish:
          map['titleEnglish'] != null ? map['titleEnglish'] as String : null,
      titleJapanese:
          map['titleJapanese'] != null ? map['titleJapanese'] as String : null,
      titleSynonyms: map['titleSynonyms'] != null
          ? List<String?>.from(
              (map['titleSynonyms'] as List<String?>).map<String?>((x) => x),
            )
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      source: map['source'] != null ? map['source'] as String : null,
      episodes: map['episodes'] != null ? map['episodes'] as int : null,
      status: map['status'] != null ? map['status'] as String : null,
      airing: map['airing'] != null ? map['airing'] as bool : null,
      aired: map['aired'] != null
          ? Published.fromMap(map['aired'] as Map<String, dynamic>)
          : null,
      duration: map['duration'] != null ? map['duration'] as String : null,
      rating: map['rating'] != null ? map['rating'] as String : null,
      score: map['score'] != null ? map['score'] as num : null,
      scoredBy: map['scoredBy'] != null ? map['scoredBy'] as double : null,
      rank: map['rank'] != null ? map['rank'] as int : null,
      popularity: map['popularity'] != null ? map['popularity'] as int : null,
      members: map['members'] != null ? map['members'] as int : null,
      favorites: map['favorites'] != null ? map['favorites'] as int : null,
      synopsis: map['synopsis'] != null ? map['synopsis'] as String : null,
      background:
          map['background'] != null ? map['background'] as String : null,
      season: map['season'] != null ? map['season'] as String : null,
      year: map['year'] != null ? map['year'] as int : null,
      broadcast: map['broadcast'] != null
          ? Broadcast.fromMap(map['broadcast'] as Map<String, dynamic>)
          : null,
      producers: map['producers'] != null
          ? List<Demographic?>.from(
              (map['producers'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      licensors: map['licensors'] != null
          ? List<Demographic?>.from(
              (map['licensors'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      studios: map['studios'] != null
          ? List<Demographic?>.from(
              (map['studios'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      genres: map['genres'] != null
          ? List<Demographic?>.from(
              (map['genres'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      explicitGenres: map['explicitGenres'] != null
          ? List<Demographic?>.from(
              (map['explicitGenres'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      themes: map['themes'] != null
          ? List<Demographic?>.from(
              (map['themes'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      demographics: map['demographics'] != null
          ? List<Demographic?>.from(
              (map['demographics'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Anime.fromJson(String source) =>
      Anime.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Anime(malId: $malId, url: $url, images: $images, trailer: $trailer, approved: $approved, titles: $titles, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, titleSynonyms: $titleSynonyms, type: $type, source: $source, episodes: $episodes, status: $status, airing: $airing, aired: $aired, duration: $duration, rating: $rating, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, members: $members, favorites: $favorites, synopsis: $synopsis, background: $background, season: $season, year: $year, broadcast: $broadcast, producers: $producers, licensors: $licensors, studios: $studios, genres: $genres, explicitGenres: $explicitGenres, themes: $themes, demographics: $demographics)';
  }

  @override
  bool operator ==(covariant Anime other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.url == url &&
        mapEquals(other.images, images) &&
        other.trailer == trailer &&
        other.approved == approved &&
        listEquals(other.titles, titles) &&
        other.title == title &&
        other.titleEnglish == titleEnglish &&
        other.titleJapanese == titleJapanese &&
        listEquals(other.titleSynonyms, titleSynonyms) &&
        other.type == type &&
        other.source == source &&
        other.episodes == episodes &&
        other.status == status &&
        other.airing == airing &&
        other.aired == aired &&
        other.duration == duration &&
        other.rating == rating &&
        other.score == score &&
        other.scoredBy == scoredBy &&
        other.rank == rank &&
        other.popularity == popularity &&
        other.members == members &&
        other.favorites == favorites &&
        other.synopsis == synopsis &&
        other.background == background &&
        other.season == season &&
        other.year == year &&
        other.broadcast == broadcast &&
        listEquals(other.producers, producers) &&
        listEquals(other.licensors, licensors) &&
        listEquals(other.studios, studios) &&
        listEquals(other.genres, genres) &&
        listEquals(other.explicitGenres, explicitGenres) &&
        listEquals(other.themes, themes) &&
        listEquals(other.demographics, demographics);
  }

  @override
  int get hashCode {
    return malId.hashCode ^
        url.hashCode ^
        images.hashCode ^
        trailer.hashCode ^
        approved.hashCode ^
        titles.hashCode ^
        title.hashCode ^
        titleEnglish.hashCode ^
        titleJapanese.hashCode ^
        titleSynonyms.hashCode ^
        type.hashCode ^
        source.hashCode ^
        episodes.hashCode ^
        status.hashCode ^
        airing.hashCode ^
        aired.hashCode ^
        duration.hashCode ^
        rating.hashCode ^
        score.hashCode ^
        scoredBy.hashCode ^
        rank.hashCode ^
        popularity.hashCode ^
        members.hashCode ^
        favorites.hashCode ^
        synopsis.hashCode ^
        background.hashCode ^
        season.hashCode ^
        year.hashCode ^
        broadcast.hashCode ^
        producers.hashCode ^
        licensors.hashCode ^
        studios.hashCode ^
        genres.hashCode ^
        explicitGenres.hashCode ^
        themes.hashCode ^
        demographics.hashCode;
  }
}
