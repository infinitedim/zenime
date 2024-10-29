// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AnimeEpisode {
  int? malId;
  String? url;
  String? title;
  String? titleJapanese;
  String? titleRomanji;
  String? aired;
  double? score;
  bool? filler;
  bool? recap;
  String? forumUrl;

  AnimeEpisode({
    this.malId,
    this.url,
    this.title,
    this.titleJapanese,
    this.titleRomanji,
    this.aired,
    this.score,
    this.filler,
    this.recap,
    this.forumUrl,
  });

  AnimeEpisode copyWith({
    int? malId,
    String? url,
    String? title,
    String? titleJapanese,
    String? titleRomanji,
    String? aired,
    double? score,
    bool? filler,
    bool? recap,
    String? forumUrl,
  }) {
    return AnimeEpisode(
      malId: malId ?? this.malId,
      url: url ?? this.url,
      title: title ?? this.title,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      titleRomanji: titleRomanji ?? this.titleRomanji,
      aired: aired ?? this.aired,
      score: score ?? this.score,
      filler: filler ?? this.filler,
      recap: recap ?? this.recap,
      forumUrl: forumUrl ?? this.forumUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malId': malId,
      'url': url,
      'title': title,
      'title_japanese': titleJapanese,
      'title_romanji': titleRomanji,
      'aired': aired,
      'score': score,
      'filler': filler,
      'recap': recap,
      'forum_url': forumUrl,
    };
  }

  factory AnimeEpisode.fromMap(Map<String, dynamic> map) {
    return AnimeEpisode(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      url: map['url'] != null ? map['url'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      titleJapanese: map['title_japanese'] != null
          ? map['title_japanese'] as String
          : null,
      titleRomanji:
          map['title_romanji'] != null ? map['title_romanji'] as String : null,
      aired: map['aired'] != null ? map['aired'] as String : null,
      score: map['score'] != null ? map['score'] as double : null,
      filler: map['filler'] != null ? map['filler'] as bool : null,
      recap: map['recap'] != null ? map['recap'] as bool : null,
      forumUrl: map['forum_url'] != null ? map['forum_url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimeEpisode.fromJson(String source) =>
      AnimeEpisode.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AnimeEpisode(malId: $malId, url: $url, title: $title, titleJapanese: $titleJapanese, titleRomanji: $titleRomanji, aired: $aired, score: $score, filler: $filler, recap: $recap, forumUrl: $forumUrl)';
  }

  @override
  bool operator ==(covariant AnimeEpisode other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.url == url &&
        other.title == title &&
        other.titleJapanese == titleJapanese &&
        other.titleRomanji == titleRomanji &&
        other.aired == aired &&
        other.score == score &&
        other.filler == filler &&
        other.recap == recap &&
        other.forumUrl == forumUrl;
  }

  @override
  int get hashCode {
    return malId.hashCode ^
        url.hashCode ^
        title.hashCode ^
        titleJapanese.hashCode ^
        titleRomanji.hashCode ^
        aired.hashCode ^
        score.hashCode ^
        filler.hashCode ^
        recap.hashCode ^
        forumUrl.hashCode;
  }
}
