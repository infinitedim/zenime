// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:zenime/model/generic_model.dart';

class AnimeDetail {
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
  double? score;
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
  List<Relation?>? relations;
  Theme? theme;
  List<External?>? animeExternal;
  List<External?>? streaming;

  AnimeDetail({
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
    this.relations,
    this.theme,
    this.animeExternal,
    this.streaming,
  });

  AnimeDetail copyWith({
    int? malId,
    String? url,
    Map<String, dynamic>? images,
    Trailer? trailer,
    bool? approved,
    List<Title>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Published? aired,
    String? duration,
    String? rating,
    double? score,
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
    List<Demographic>? producers,
    List<Demographic>? licensors,
    List<Demographic>? studios,
    List<Demographic>? genres,
    List<Demographic>? explicitGenres,
    List<Demographic>? themes,
    List<Demographic>? demographics,
    List<Relation>? relations,
    Theme? theme,
    List<External>? animeExternal,
    List<External>? streaming,
  }) {
    return AnimeDetail(
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
      relations: relations ?? this.relations,
      theme: theme ?? this.theme,
      animeExternal: animeExternal ?? this.animeExternal,
      streaming: streaming ?? this.streaming,
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
      'titleSynonyms': titleSynonyms,
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
      'relations': relations?.map((x) => x?.toMap()).toList(),
      'theme': theme?.toMap(),
      'animeExternal': animeExternal?.map((x) => x?.toMap()).toList(),
      'streaming': streaming?.map((x) => x?.toMap()).toList(),
    };
  }

  factory AnimeDetail.fromMap(Map<String, dynamic> map) {
    return AnimeDetail(
      malId: map['malId'] as int,
      url: map['url'] as String,
      images: map['images'] as Map<String, dynamic>,
      trailer: Trailer.fromMap(map['trailer'] as Map<String, dynamic>),
      approved: map['approved'] as bool,
      titles: List<Title>.from(
        (map['titles'] as List<int>).map<Title>(
          (x) => Title.fromMap(x as Map<String, dynamic>),
        ),
      ),
      title: map['title'] as String,
      titleEnglish: map['titleEnglish'] as String,
      titleJapanese: map['titleJapanese'] as String,
      titleSynonyms: List<String>.from(
        (map['titleSynonyms'] as List<String>),
      ),
      type: map['type'] as String,
      source: map['source'] as String,
      episodes: map['episodes'] as int,
      status: map['status'] as String,
      airing: map['airing'] as bool,
      aired: Published.fromMap(map['aired'] as Map<String, dynamic>),
      duration: map['duration'] as String,
      rating: map['rating'] as String,
      score: map['score'] as double,
      scoredBy: map['scoredBy'] as double,
      rank: map['rank'] as int,
      popularity: map['popularity'] as int,
      members: map['members'] as int,
      favorites: map['favorites'] as int,
      synopsis: map['synopsis'] as String,
      background: map['background'] as String,
      season: map['season'] as String,
      year: map['year'] as int,
      broadcast: Broadcast.fromMap(map['broadcast'] as Map<String, dynamic>),
      producers: List<Demographic>.from(
        (map['producers'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      licensors: List<Demographic>.from(
        (map['licensors'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      studios: List<Demographic>.from(
        (map['studios'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      genres: List<Demographic>.from(
        (map['genres'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      explicitGenres: List<Demographic>.from(
        (map['explicitGenres'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      themes: List<Demographic>.from(
        (map['themes'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      demographics: List<Demographic>.from(
        (map['demographics'] as List<int>).map<Demographic>(
          (x) => Demographic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      relations: List<Relation>.from(
        (map['relations'] as List<int>).map<Relation>(
          (x) => Relation.fromMap(x as Map<String, dynamic>),
        ),
      ),
      theme: Theme.fromMap(map['theme'] as Map<String, dynamic>),
      animeExternal: List<External>.from(
        (map['animeExternal'] as List<int>).map<External>(
          (x) => External.fromMap(x as Map<String, dynamic>),
        ),
      ),
      streaming: List<External>.from(
        (map['streaming'] as List<int>).map<External>(
          (x) => External.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimeDetail.fromJson(String source) =>
      AnimeDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AnimeDetail(malId: $malId, url: $url, images: $images, trailer: $trailer, approved: $approved, titles: $titles, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, titleSynonyms: $titleSynonyms, type: $type, source: $source, episodes: $episodes, status: $status, airing: $airing, aired: $aired, duration: $duration, rating: $rating, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, members: $members, favorites: $favorites, synopsis: $synopsis, background: $background, season: $season, year: $year, broadcast: $broadcast, producers: $producers, licensors: $licensors, studios: $studios, genres: $genres, explicitGenres: $explicitGenres, themes: $themes, demographics: $demographics, relations: $relations, theme: $theme, animeExternal: $animeExternal, streaming: $streaming)';
  }

  @override
  bool operator ==(covariant AnimeDetail other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.url == url &&
        other.images == images &&
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
        listEquals(other.demographics, demographics) &&
        listEquals(other.relations, relations) &&
        other.theme == theme &&
        listEquals(other.animeExternal, animeExternal) &&
        listEquals(other.streaming, streaming);
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
        demographics.hashCode ^
        relations.hashCode ^
        theme.hashCode ^
        animeExternal.hashCode ^
        streaming.hashCode;
  }
}
