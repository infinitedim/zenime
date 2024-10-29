import 'dart:convert';

class Genre {
  double? malId;
  String? name;
  String? url;
  int? count;

  Genre({
    this.malId,
    this.name,
    this.url,
    this.count,
  });

  Genre copyWith({
    double? malId,
    String? name,
    String? url,
    int? count,
  }) {
    return Genre(
      malId: malId ?? this.malId,
      name: name ?? this.name,
      url: url ?? this.url,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'malId': malId,
      'name': name,
      'url': url,
      'count': count,
    };
  }

  factory Genre.fromMap(Map<String, dynamic> map) {
    return Genre(
      malId: map['malId'] != null ? map['malId'] as double : null,
      name: map['name'] != null ? map['name'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      count: map['count'] != null ? map['count'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Genre.fromJson(String source) =>
      Genre.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Genre(malId: $malId, name: $name, url: $url, count: $count)';
  }

  @override
  bool operator ==(covariant Genre other) {
    if (identical(this, other)) return true;

    return other.malId == malId &&
        other.name == name &&
        other.url == url &&
        other.count == count;
  }

  @override
  int get hashCode {
    return malId.hashCode ^ name.hashCode ^ url.hashCode ^ count.hashCode;
  }
}
