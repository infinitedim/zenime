import 'package:zenime/model/anime/anime.dart';
import 'package:zenime/model/generic_model.dart';

AnimeDetail animeDetailDummy = AnimeDetail(
  malId: 5114,
  url: 'https://myanimelist.net/anime/5114/Fullmetal_Alchemist__Brotherhood',
  images: {
    "jpg": {
      "image_url": "https://cdn.myanimelist.net/images/anime/1208/94745.jpg",
      "small_image_url":
          "https://cdn.myanimelist.net/images/anime/1208/94745t.jpg",
      "large_image_url":
          "https://cdn.myanimelist.net/images/anime/1208/94745l.jpg"
    },
    "webp": {
      "image_url": "https://cdn.myanimelist.net/images/anime/1208/94745.webp",
      "small_image_url":
          "https://cdn.myanimelist.net/images/anime/1208/94745t.webp",
      "large_image_url":
          "https://cdn.myanimelist.net/images/anime/1208/94745l.webp"
    }
  },
  trailer: Trailer(
    youtubeId: "--IcmZkvL0Q",
    url: "https://www.youtube.com/watch?v=--IcmZkvL0Q",
    embedUrl:
        "https://www.youtube.com/embed/--IcmZkvL0Q?enablejsapi=1&wmode=opaque&autoplay=1",
    images: Images(
      imageUrl: "https://img.youtube.com/vi/--IcmZkvL0Q/default.jpg",
      smallImageUrl: "https://img.youtube.com/vi/--IcmZkvL0Q/sddefault.jpg",
      mediumImageUrl: "https://img.youtube.com/vi/--IcmZkvL0Q/mqdefault.jpg",
      largeImageUrl: "https://img.youtube.com/vi/--IcmZkvL0Q/hqdefault.jpg",
      maximumImageUrl:
          "https://img.youtube.com/vi/--IcmZkvL0Q/maxresdefault.jpg",
    ),
  ),
  approved: true,
  titles: [
    Title(
      type: "Default",
      title: "Fullmetal Alchemist: Brotherhood",
    ),
    Title(
      type: "Synonym",
      title: "Hagane no Renkinjutsushi: Fullmetal Alchemist",
    ),
    Title(
      type: "Synonym",
      title: "Fullmetal Alchemist (2009)",
    ),
    Title(
      type: "Synonym",
      title: "FMA",
    ),
    Title(
      type: "Synonym",
      title: "FMAB",
    ),
    Title(
      type: "Japanese",
      title: "鋼の錬金術師 FULLMETAL ALCHEMIST",
    ),
    Title(
      type: "English",
      title: "Fullmetal Alchemist: Brotherhood",
    ),
    Title(
      type: "French",
      title: "Fullmetal Alchemist Brotherhood",
    ),
  ],
  title: "Fullmetal Alchemist: Brotherhood",
  titleEnglish: "Fullmetal Alchemist: Brotherhood",
  titleJapanese: "鋼の錬金術師 FULLMETAL ALCHEMIST",
  titleSynonyms: [
    "Hagane no Renkinjutsushi: Fullmetal Alchemist",
    "Fullmetal Alchemist (2009)",
    "FMA",
    "FMAB"
  ],
  type: "TV",
  source: "Manga",
  episodes: 64,
  status: "Finished Airing",
  airing: false,
  aired: Published(
    from: DateTime.parse("2009-04-05T00:00:00+00:00"),
    to: DateTime.parse("2010-07-04T00:00:00+00:00"),
    prop: Prop(
      from: From(
        day: 5,
        month: 4,
        year: 2009,
      ),
      to: From(
        day: 4,
        month: 2,
        year: 2010,
      ),
    ),
    string: "Apr 5, 2009 to Jul 4, 2010",
  ),
  duration: "24 min per ep",
  rating: "R - 17+ (violence & profanity)",
  score: 9.09,
  scoredBy: 2163485,
  rank: 2,
  popularity: 3,
  members: 3426428,
  favorites: 228872,
  synopsis:
      "After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality. Ignoring the alchemical principle banning human transmutation, the boys attempted to bring their recently deceased mother back to life. Instead, they suffered brutal personal loss: Alphonse's body disintegrated while Edward lost a leg and then sacrificed an arm to keep Alphonse's soul in the physical realm by binding it to a hulking suit of armor.\n\nThe brothers are rescued by their neighbor Pinako Rockbell and her granddaughter Winry. Known as a bio-mechanical engineering prodigy, Winry creates prosthetic limbs for Edward by utilizing \"automail,\" a tough, versatile metal used in robots and combat armor. After years of training, the Elric brothers set off on a quest to restore their bodies by locating the Philosopher's Stone—a powerful gem that allows an alchemist to defy the traditional laws of Equivalent Exchange.\n\nAs Edward becomes an infamous alchemist and gains the nickname \"Fullmetal,\" the boys' journey embroils them in a growing conspiracy that threatens the fate of the world.\n\n[Written by MAL Rewrite]",
  background: "",
  season: "spring",
  year: 2009,
  broadcast: Broadcast(
    day: "Sundays",
    time: "17:00",
    timezone: "Asia/Tokyo",
    string: "Sundays at 17:00 (JST)",
  ),
  producers: [
    Demographic(
      malId: 17,
      type: "anime",
      name: "Aniplex",
      url: "https://myanimelist.net/anime/producer/17/Aniplex",
    ),
    Demographic(
      malId: 58,
      type: "anime",
      name: "Square Enix",
      url: "https://myanimelist.net/anime/producer/58/Square_Enix",
    ),
    Demographic(
      malId: 143,
      type: "anime",
      name: "Mainichi Broadcasting System",
      url:
          "https://myanimelist.net/anime/producer/143/Mainichi_Broadcasting_System",
    ),
    Demographic(
      malId: 1155,
      type: "anime",
      name: "Studio Moriken",
      url: "https://myanimelist.net/anime/producer/1155/Studio_Moriken",
    ),
  ],
  licensors: [
    Demographic(
      malId: 102,
      type: "anime",
      name: "Funimation",
      url: "https://myanimelist.net/anime/producer/102/Funimation",
    ),
    Demographic(
      malId: 493,
      type: "anime",
      name: "Aniplex of America",
      url: "https://myanimelist.net/anime/producer/493/Aniplex_of_America",
    ),
  ],
  studios: [
    Demographic(
      malId: 4,
      type: "anime",
      name: "Bones",
      url: "https://myanimelist.net/anime/producer/4/Bones",
    )
  ],
  genres: [
    Demographic(
      malId: 1,
      type: "anime",
      name: "Action",
      url: "https://myanimelist.net/anime/genre/1/Action",
    ),
    Demographic(
      malId: 2,
      type: "anime",
      name: "Adventure",
      url: "https://myanimelist.net/anime/genre/2/Adventure",
    ),
    Demographic(
      malId: 8,
      type: "anime",
      name: "Drama",
      url: "https://myanimelist.net/anime/genre/8/Drama",
    ),
    Demographic(
      malId: 10,
      type: "anime",
      name: "Fantasy",
      url: "https://myanimelist.net/anime/genre/10/Fantasy",
    ),
  ],
  explicitGenres: [],
  themes: [
    Demographic(
      malId: 38,
      type: "anime",
      name: "Military",
      url: "https://myanimelist.net/anime/genre/38/Military",
    )
  ],
  demographics: [
    Demographic(
      malId: 27,
      type: "anime",
      name: "Shounen",
      url: "https://myanimelist.net/anime/genre/27/Shounen",
    )
  ],
  relations: [
    Relation(
      relation: "Adaptation",
      entry: [
        Demographic(
          malId: 25,
          type: "manga",
          name: "Fullmetal Alchemist",
          url: "https://myanimelist.net/manga/25/Fullmetal_Alchemist",
        )
      ],
    ),
    Relation(
      relation: "Side Story",
      entry: [
        Demographic(
          malId: 6421,
          type: "anime",
          name: "Fullmetal Alchemist: Brotherhood Specials",
          url:
              "https://myanimelist.net/anime/6421/Fullmetal_Alchemist__Brotherhood_Specials",
        ),
        Demographic(
          malId: 9135,
          type: "anime",
          name: "Fullmetal Alchemist: The Sacred Star of Milos",
          url:
              "https://myanimelist.net/anime/9135/Fullmetal_Alchemist__The_Sacred_Star_of_Milos",
        ),
      ],
    ),
    Relation(
      relation: "Spin-Off",
      entry: [
        Demographic(
          malId: 7902,
          type: "anime",
          name: "Fullmetal Alchemist: Brotherhood - 4-koma Gekijou",
          url:
              "https://myanimelist.net/anime/7902/Fullmetal_Alchemist__Brotherhood_-_4-koma_Gekijou",
        ),
      ],
    ),
    Relation(
      relation: "Alternative Version",
      entry: [
        Demographic(
          malId: 121,
          type: "anime",
          name: "Fullmetal Alchemist",
          url: "https://myanimelist.net/anime/121/Fullmetal_Alchemist",
        )
      ],
    )
  ],
  theme: Theme(
    openings: [
      "1: \"again\" by YUI (eps 1-14)",
      "2: \"Hologram (ホログラム)\" by NICO Touches the Walls (eps 15-26)",
      "3: \"Golden Time Lover (ゴールデンタイムラバー)\" by Sukima Switch (eps 27-38)",
      "4: \"Period\" by Chemistry (eps 39-50)",
      "5: \"Rain (レイン)\" by SID (eps 51-62)"
    ],
    endings: [
      "1: \"Uso (嘘)\" by SID (eps 1-14)",
      "2: \"LET IT OUT\" by Miho Fukuhara (eps 15-26)",
      "3: \"Tsunaida Te (つないだ手)\" by Lil'B (eps 27-38)",
      "4: \"Shunkan Sentimental (瞬間センチメンタル)\" by SCANDAL (eps 39-50)",
      "5: \"RAY OF LIGHT\" by Nakagawa Shouko (eps 51-62)",
      "6: \"Rain (レイン)\" by SID (eps 63)",
      "7: \"Hologram (ホログラム)\" by NICO Touches the Walls (eps 64)"
    ],
  ),
  animeExternal: [
    External(name: "Official Site", url: "http://www.hagaren.jp/fa/"),
    External(
      name: "@hagaren_anime",
      url: "https://twitter.com/hagaren_anime",
    ),
    External(
      name: "AniDB",
      url: "https://anidb.net/perl-bin/animedb.pl?show=anime&aid=6107",
    ),
    External(
      name: "ANN",
      url: "https://www.animenewsnetwork.com/encyclopedia/anime.php?id=10216",
    ),
    External(
      name: "Wikipedia",
      url: "https://en.wikipedia.org/wiki/Fullmetal_Alchemist:_Brotherhood",
    ),
    External(
      name: "Wikipedia",
      url:
          "https://ja.wikipedia.org/wiki/%E9%8B%BC%E3%81%AE%E9%8C%AC%E9%87%91%E8%A1%93%E5%B8%AB_FULLMETAL_ALCHEMIST",
    ),
    External(
      name: "Syoboi",
      url: "https://cal.syoboi.jp/tid/1575",
    ),
  ],
  streaming: [
    External(
      name: "Crunchyroll",
      url: "http://www.crunchyroll.com/series-271031",
    )
  ],
);
