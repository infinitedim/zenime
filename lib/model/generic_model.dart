// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Broadcast {
  String? day;
  String? time;
  String? timezone;
  String? string;

  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  Broadcast copyWith({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) {
    return Broadcast(
      day: day ?? this.day,
      time: time ?? this.time,
      timezone: timezone ?? this.timezone,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'time': time,
      'timezone': timezone,
      'string': string,
    };
  }

  factory Broadcast.fromMap(Map<String, dynamic> map) {
    return Broadcast(
      day: map['day'] != null ? map['day'] as String : null,
      time: map['time'] != null ? map['time'] as String : null,
      timezone: map['timezone'] != null ? map['timezone'] as String : null,
      string: map['string'] != null ? map['string'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Broadcast.fromJson(String source) =>
      Broadcast.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Broadcast(day: $day, time: $time, timezone: $timezone, string: $string)';
  }

  @override
  bool operator ==(covariant Broadcast other) {
    if (identical(this, other)) return true;

    return other.day == day &&
        other.time == time &&
        other.timezone == timezone &&
        other.string == string;
  }

  @override
  int get hashCode {
    return day.hashCode ^ time.hashCode ^ timezone.hashCode ^ string.hashCode;
  }
}

class Demographic {
  int? malId;
  String? type;
  String? name;
  String? url;

  Demographic({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  Demographic copyWith({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) {
    return Demographic(
      malId: malId ?? this.malId,
      type: type ?? this.type,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mal_id': malId,
      'type': type,
      'name': name,
      'url': url,
    };
  }

  factory Demographic.fromMap(Map<String, dynamic> map) {
    return Demographic(
      malId: map['mal_id'] != null ? map['mal_id'] as int : null,
      type: map['type'] != null ? map['type'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Demographic.fromJson(String source) =>
      Demographic.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Demographic(malId: $malId, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(covariant Demographic other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.type == type &&
        other.name == name &&
        other.url == url;
  }

  @override
  int get hashCode {
    return malId.hashCode ^ type.hashCode ^ name.hashCode ^ url.hashCode;
  }
}

class External {
  String? name;
  String? url;

  External({
    this.name,
    this.url,
  });

  External copyWith({
    String? name,
    String? url,
  }) {
    return External(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory External.fromMap(Map<String, dynamic> map) {
    return External(
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory External.fromJson(String source) =>
      External.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'External(name: $name, url: $url)';

  @override
  bool operator ==(covariant External other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

class From {
  int? day;
  int? month;
  int? year;

  From({
    this.day,
    this.month,
    this.year,
  });

  From copyWith({
    int? day,
    int? month,
    int? year,
  }) {
    return From(
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'month': month,
      'year': year,
    };
  }

  factory From.fromMap(Map<String, dynamic> map) {
    return From(
      day: map['day'] != null ? map['day'] as int : null,
      month: map['month'] != null ? map['month'] as int : null,
      year: map['year'] != null ? map['year'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory From.fromJson(String source) =>
      From.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'From(day: $day, month: $month, year: $year)';

  @override
  bool operator ==(covariant From other) {
    if (identical(this, other)) return true;

    return other.day == day && other.month == month && other.year == year;
  }

  @override
  int get hashCode => day.hashCode ^ month.hashCode ^ year.hashCode;
}

class Image {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  Image copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) {
    return Image(
      imageUrl: imageUrl ?? this.imageUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'large_image_url': largeImageUrl,
    };
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
      smallImageUrl: map['small_image_url'] != null
          ? map['small_image_url'] as String
          : null,
      largeImageUrl: map['large_image_url'] != null
          ? map['large_image_url'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) =>
      Image.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Image(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, largeImageUrl: $largeImageUrl)';

  @override
  bool operator ==(covariant Image other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.smallImageUrl == smallImageUrl &&
        other.largeImageUrl == largeImageUrl;
  }

  @override
  int get hashCode =>
      imageUrl.hashCode ^ smallImageUrl.hashCode ^ largeImageUrl.hashCode;
}

class Images {
  Image? jpg;
  Image? webp;
  Images({
    this.jpg,
    this.webp,
  });

  Images copyWith({
    Image? jpg,
    Image? webp,
  }) {
    return Images(
      jpg: jpg ?? this.jpg,
      webp: webp ?? this.webp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jpg': jpg?.toMap(),
      'webp': webp?.toMap(),
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      jpg: map['jpg'] != null
          ? Image.fromMap(map['jpg'] as Map<String, dynamic>)
          : null,
      webp: map['webp'] != null
          ? Image.fromMap(map['webp'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) =>
      Images.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Images(jpg: $jpg, webp: $webp)';

  @override
  bool operator ==(covariant Images other) {
    if (identical(this, other)) return true;

    return other.jpg == jpg && other.webp == webp;
  }

  @override
  int get hashCode => jpg.hashCode ^ webp.hashCode;
}

class Prop {
  From? from;
  From? to;

  Prop({
    this.from,
    this.to,
  });

  Prop copyWith({
    From? from,
    From? to,
  }) {
    return Prop(
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from?.toMap(),
      'to': to?.toMap(),
    };
  }

  factory Prop.fromMap(Map<String, dynamic> map) {
    return Prop(
      from: map['from'] != null
          ? From.fromMap(map['from'] as Map<String, dynamic>)
          : null,
      to: map['to'] != null
          ? From.fromMap(map['to'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Prop.fromJson(String source) =>
      Prop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Prop(from: $from, to: $to)';

  @override
  bool operator ==(covariant Prop other) {
    if (identical(this, other)) return true;

    return other.from == from && other.to == to;
  }

  @override
  int get hashCode => from.hashCode ^ to.hashCode;
}

class Published {
  DateTime? from;
  DateTime? to;
  Prop? prop;
  String? string;

  Published({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  Published copyWith({
    DateTime? from,
    DateTime? to,
    Prop? prop,
    String? string,
  }) {
    return Published(
      from: from ?? this.from,
      to: to ?? this.to,
      prop: prop ?? this.prop,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
      'prop': prop?.toMap(),
      'string': string,
    };
  }

  factory Published.fromMap(Map<String, dynamic> map) {
    return Published(
      from: map['from'] != null ? DateTime.parse(map['from'] as String) : null,
      to: map['to'] != null ? DateTime.parse(map['to'] as String) : null,
      prop: map['prop'] != null
          ? Prop.fromMap(map['prop'] as Map<String, dynamic>)
          : null,
      string: map['string'] != null ? map['string'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Published.fromJson(String source) =>
      Published.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Published(from: $from, to: $to, prop: $prop, string: $string)';
  }

  @override
  bool operator ==(covariant Published other) {
    if (identical(this, other)) return true;

    return other.from == from &&
        other.to == to &&
        other.prop == prop &&
        other.string == string;
  }

  @override
  int get hashCode {
    return from.hashCode ^ to.hashCode ^ prop.hashCode ^ string.hashCode;
  }
}

class Relation {
  String? relation;
  List<Demographic?>? entry;

  Relation({
    this.relation,
    this.entry,
  });

  Relation copyWith({
    String? relation,
    List<Demographic?>? entry,
  }) {
    return Relation(
      relation: relation ?? this.relation,
      entry: entry ?? this.entry,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relation': relation,
      'entry': entry?.map((x) => x?.toMap()).toList(),
    };
  }

  factory Relation.fromMap(Map<String, dynamic> map) {
    return Relation(
      relation: map['relation'] != null ? map['relation'] as String : null,
      entry: map['entry'] != null
          ? List<Demographic?>.from(
              (map['entry'] as List<dynamic>).map<Demographic?>(
                (x) => Demographic?.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Relation.fromJson(String source) =>
      Relation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Relation(relation: $relation, entry: $entry)';

  @override
  bool operator ==(covariant Relation other) {
    if (identical(this, other)) return true;

    return other.relation == relation && listEquals(other.entry, entry);
  }

  @override
  int get hashCode => relation.hashCode ^ entry.hashCode;
}

class Theme {
  List<String?>? openings;
  List<String?>? endings;

  Theme({
    this.openings,
    this.endings,
  });

  Theme copyWith({
    List<String?>? openings,
    List<String?>? endings,
  }) {
    return Theme(
      openings: openings ?? this.openings,
      endings: endings ?? this.endings,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openings': openings?.map((x) => x).toList(),
      'endings': endings?.map((x) => x).toList(),
    };
  }

  factory Theme.fromMap(Map<String, dynamic> map) {
    return Theme(
      openings: map['openings'] != null
          ? List<String?>.from(
              (map['openings'] as List<dynamic>).map<String?>((x) => x),
            )
          : null,
      endings: map['endings'] != null
          ? List<String?>.from(
              (map['endings'] as List<dynamic>).map<String?>((x) => x),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Theme.fromJson(String source) =>
      Theme.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Theme(openings: $openings, endings: $endings)';

  @override
  bool operator ==(covariant Theme other) {
    if (identical(this, other)) return true;

    return listEquals(other.openings, openings) &&
        listEquals(other.endings, endings);
  }

  @override
  int get hashCode => openings.hashCode ^ endings.hashCode;
}

class Title {
  String? type;
  String? title;

  Title({
    this.type,
    this.title,
  });

  Title copyWith({
    String? type,
    String? title,
  }) {
    return Title(
      type: type ?? this.type,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'title': title,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    return Title(
      type: map['type'] != null ? map['type'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Title.fromJson(String source) =>
      Title.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Title(type: $type, title: $title)';

  @override
  bool operator ==(covariant Title other) {
    if (identical(this, other)) return true;

    return other.type == type && other.title == title;
  }

  @override
  int get hashCode => type.hashCode ^ title.hashCode;
}

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  TrailerImages? images;

  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  Trailer copyWith({
    String? youtubeId,
    String? url,
    String? embedUrl,
    TrailerImages? images,
  }) {
    return Trailer(
      youtubeId: youtubeId ?? this.youtubeId,
      url: url ?? this.url,
      embedUrl: embedUrl ?? this.embedUrl,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'youtubeId': youtubeId,
      'url': url,
      'embedUrl': embedUrl,
      'images': images?.toMap(),
    };
  }

  factory Trailer.fromMap(Map<String, dynamic> map) {
    return Trailer(
      youtubeId: map['youtube_id'] != null ? map['youtube_id'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      embedUrl: map['embed_url'] != null ? map['embed_url'] as String : null,
      images: map['images'] != null
          ? TrailerImages.fromMap(map['images'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Trailer.fromJson(String source) =>
      Trailer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Trailer(youtubeId: $youtubeId, url: $url, embedUrl: $embedUrl, images: $images)';
  }

  @override
  bool operator ==(covariant Trailer other) {
    if (identical(this, other)) return true;

    return other.youtubeId == youtubeId &&
        other.url == url &&
        other.embedUrl == embedUrl &&
        other.images == images;
  }

  @override
  int get hashCode {
    return youtubeId.hashCode ^
        url.hashCode ^
        embedUrl.hashCode ^
        images.hashCode;
  }
}

class TrailerImages {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  TrailerImages({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  TrailerImages copyWith({
    String? imageUrl,
    String? smallImageUrl,
    String? mediumImageUrl,
    String? largeImageUrl,
    String? maximumImageUrl,
  }) {
    return TrailerImages(
      imageUrl: imageUrl ?? this.imageUrl,
      smallImageUrl: smallImageUrl ?? this.smallImageUrl,
      mediumImageUrl: mediumImageUrl ?? this.mediumImageUrl,
      largeImageUrl: largeImageUrl ?? this.largeImageUrl,
      maximumImageUrl: maximumImageUrl ?? this.maximumImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'medium_image_url': mediumImageUrl,
      'large_image_url': largeImageUrl,
      'maximum_image_url': maximumImageUrl,
    };
  }

  factory TrailerImages.fromMap(Map<String, dynamic> map) {
    return TrailerImages(
      imageUrl: map['image_url'] != null ? map['image_url'] as String : null,
      smallImageUrl: map['small_image_url'] != null
          ? map['small_image_url'] as String
          : null,
      mediumImageUrl: map['medium_image_url'] != null
          ? map['medium_image_url'] as String
          : null,
      largeImageUrl: map['large_image_url'] != null
          ? map['large_image_url'] as String
          : null,
      maximumImageUrl: map['maximum_image_url'] != null
          ? map['maximum_image_url'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TrailerImages.fromJson(String source) =>
      TrailerImages.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TrailerImages(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl, maximumImageUrl: $maximumImageUrl)';
  }

  @override
  bool operator ==(covariant TrailerImages other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.smallImageUrl == smallImageUrl &&
        other.mediumImageUrl == mediumImageUrl &&
        other.largeImageUrl == largeImageUrl &&
        other.maximumImageUrl == maximumImageUrl;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        smallImageUrl.hashCode ^
        mediumImageUrl.hashCode ^
        largeImageUrl.hashCode ^
        maximumImageUrl.hashCode;
  }
}
