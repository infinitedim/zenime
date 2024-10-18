// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:zenime/model/generic_model.dart';

class MangaDetail {
  double? malId;
  String? url;
  Map<String, dynamic>? images;
  bool? approved;
  List<Title?>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String?>? titleSynonyms;
  String? type;
  int? chapters;
  int? volumes;
  String? status;
  bool? publishing;
  Published? published;
  num? score;
  double? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  List<Demographic?>? authors;
  List<Demographic?>? serializations;
  List<Demographic?>? genres;
  List<Demographic?>? explicitGenres;
  List<Demographic?>? themes;
  List<Demographic?>? demographics;
  List<Relation?>? relations;
  List<External?>? mangaDetailExternal;

  MangaDetail({
    this.malId,
    this.url,
    this.images,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.chapters,
    this.volumes,
    this.status,
    this.publishing,
    this.published,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.authors,
    this.serializations,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
    this.relations,
    this.mangaDetailExternal,
  });

  MangaDetail copyWith({
    double? malId,
    String? url,
    Map<String, dynamic>? images,
    bool? approved,
    List<Title?>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String?>? titleSynonyms,
    String? type,
    int? chapters,
    int? volumes,
    String? status,
    bool? publishing,
    Published? published,
    num? score,
    double? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    List<Demographic?>? authors,
    List<Demographic?>? serializations,
    List<Demographic?>? genres,
    List<Demographic?>? explicitGenres,
    List<Demographic?>? themes,
    List<Demographic?>? demographics,
    List<Relation?>? relations,
    List<External?>? mangaDetailExternal,
  }) {
    return MangaDetail(
      malId: malId ?? this.malId,
      url: url ?? this.url,
      images: images ?? this.images,
      approved: approved ?? this.approved,
      titles: titles ?? this.titles,
      title: title ?? this.title,
      titleEnglish: titleEnglish ?? this.titleEnglish,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      titleSynonyms: titleSynonyms ?? this.titleSynonyms,
      type: type ?? this.type,
      chapters: chapters ?? this.chapters,
      volumes: volumes ?? this.volumes,
      status: status ?? this.status,
      publishing: publishing ?? this.publishing,
      published: published ?? this.published,
      score: score ?? this.score,
      scoredBy: scoredBy ?? this.scoredBy,
      rank: rank ?? this.rank,
      popularity: popularity ?? this.popularity,
      members: members ?? this.members,
      favorites: favorites ?? this.favorites,
      synopsis: synopsis ?? this.synopsis,
      background: background ?? this.background,
      authors: authors ?? this.authors,
      serializations: serializations ?? this.serializations,
      genres: genres ?? this.genres,
      explicitGenres: explicitGenres ?? this.explicitGenres,
      themes: themes ?? this.themes,
      demographics: demographics ?? this.demographics,
      relations: relations ?? this.relations,
      mangaDetailExternal: mangaDetailExternal ?? this.mangaDetailExternal,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malId': malId,
      'url': url,
      'images': images,
      'approved': approved,
      'titles': titles?.map((x) => x?.toMap()).toList(),
      'title': title,
      'titleEnglish': titleEnglish,
      'titleJapanese': titleJapanese,
      'titleSynonyms': titleSynonyms?.map((x) => x).toList(),
      'type': type,
      'chapters': chapters,
      'volumes': volumes,
      'status': status,
      'publishing': publishing,
      'published': published?.toMap(),
      'score': score,
      'scoredBy': scoredBy,
      'rank': rank,
      'popularity': popularity,
      'members': members,
      'favorites': favorites,
      'synopsis': synopsis,
      'background': background,
      'authors': authors?.map((x) => x?.toMap()).toList(),
      'serializations': serializations?.map((x) => x?.toMap()).toList(),
      'genres': genres?.map((x) => x?.toMap()).toList(),
      'explicitGenres': explicitGenres?.map((x) => x?.toMap()).toList(),
      'themes': themes?.map((x) => x?.toMap()).toList(),
      'demographics': demographics?.map((x) => x?.toMap()).toList(),
      'relations': relations?.map((x) => x?.toMap()).toList(),
      'mangaDetailExternal':
          mangaDetailExternal?.map((x) => x?.toMap()).toList(),
    };
  }

  factory MangaDetail.fromMap(Map<String, dynamic> map) {
    return MangaDetail(
      malId: map['malId'] != null ? map['malId'] as double : null,
      url: map['url'] != null ? map['url'] as String : null,
      images: map['images'] != null
          ? Map<String, dynamic>.from((map['images'] as Map<String, dynamic>))
          : null,
      approved: map['approved'] != null ? map['approved'] as bool : null,
      titles: map['titles'] != null
          ? List<Title?>.from(
              (map['titles'] as List<int>).map<Title?>(
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
      chapters: map['chapters'] != null ? map['chapters'] as int : null,
      volumes: map['volumes'] != null ? map['volumes'] as int : null,
      status: map['status'] != null ? map['status'] as String : null,
      publishing: map['publishing'] != null ? map['publishing'] as bool : null,
      published: map['published'] != null
          ? Published.fromMap(map['published'] as Map<String, dynamic>)
          : null,
      score: map['score'] != null ? map['score'] as num : null,
      scoredBy: map['scoredBy'] != null ? map['scoredBy'] as double : null,
      rank: map['rank'] != null ? map['rank'] as int : null,
      popularity: map['popularity'] != null ? map['popularity'] as int : null,
      members: map['members'] != null ? map['members'] as int : null,
      favorites: map['favorites'] != null ? map['favorites'] as int : null,
      synopsis: map['synopsis'] != null ? map['synopsis'] as String : null,
      background:
          map['background'] != null ? map['background'] as String : null,
      authors: map['authors'] != null
          ? List<Demographic?>.from(
              (map['authors'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      serializations: map['serializations'] != null
          ? List<Demographic?>.from(
              (map['serializations'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      genres: map['genres'] != null
          ? List<Demographic?>.from(
              (map['genres'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      explicitGenres: map['explicitGenres'] != null
          ? List<Demographic?>.from(
              (map['explicitGenres'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      themes: map['themes'] != null
          ? List<Demographic?>.from(
              (map['themes'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      demographics: map['demographics'] != null
          ? List<Demographic?>.from(
              (map['demographics'] as List<int>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      relations: map['relations'] != null
          ? List<Relation?>.from(
              (map['relations'] as List<int>).map<Relation?>(
                (x) => Relation?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      mangaDetailExternal: map['mangaDetailExternal'] != null
          ? List<External?>.from(
              (map['mangaDetailExternal'] as List<int>).map<External?>(
                (x) => External?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MangaDetail.fromJson(String source) =>
      MangaDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MangaDetail(malId: $malId, url: $url, images: $images, approved: $approved, titles: $titles, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, titleSynonyms: $titleSynonyms, type: $type, chapters: $chapters, volumes: $volumes, status: $status, publishing: $publishing, published: $published, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, members: $members, favorites: $favorites, synopsis: $synopsis, background: $background, authors: $authors, serializations: $serializations, genres: $genres, explicitGenres: $explicitGenres, themes: $themes, demographics: $demographics, relations: $relations, mangaDetailExternal: $mangaDetailExternal)';
  }

  @override
  bool operator ==(covariant MangaDetail other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.url == url &&
        mapEquals(other.images, images) &&
        other.approved == approved &&
        listEquals(other.titles, titles) &&
        other.title == title &&
        other.titleEnglish == titleEnglish &&
        other.titleJapanese == titleJapanese &&
        listEquals(other.titleSynonyms, titleSynonyms) &&
        other.type == type &&
        other.chapters == chapters &&
        other.volumes == volumes &&
        other.status == status &&
        other.publishing == publishing &&
        other.published == published &&
        other.score == score &&
        other.scoredBy == scoredBy &&
        other.rank == rank &&
        other.popularity == popularity &&
        other.members == members &&
        other.favorites == favorites &&
        other.synopsis == synopsis &&
        other.background == background &&
        listEquals(other.authors, authors) &&
        listEquals(other.serializations, serializations) &&
        listEquals(other.genres, genres) &&
        listEquals(other.explicitGenres, explicitGenres) &&
        listEquals(other.themes, themes) &&
        listEquals(other.demographics, demographics) &&
        listEquals(other.relations, relations) &&
        listEquals(other.mangaDetailExternal, mangaDetailExternal);
  }

  @override
  int get hashCode {
    return malId.hashCode ^
        url.hashCode ^
        images.hashCode ^
        approved.hashCode ^
        titles.hashCode ^
        title.hashCode ^
        titleEnglish.hashCode ^
        titleJapanese.hashCode ^
        titleSynonyms.hashCode ^
        type.hashCode ^
        chapters.hashCode ^
        volumes.hashCode ^
        status.hashCode ^
        publishing.hashCode ^
        published.hashCode ^
        score.hashCode ^
        scoredBy.hashCode ^
        rank.hashCode ^
        popularity.hashCode ^
        members.hashCode ^
        favorites.hashCode ^
        synopsis.hashCode ^
        background.hashCode ^
        authors.hashCode ^
        serializations.hashCode ^
        genres.hashCode ^
        explicitGenres.hashCode ^
        themes.hashCode ^
        demographics.hashCode ^
        relations.hashCode ^
        mangaDetailExternal.hashCode;
  }
}
