import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/model/anime/top_anime.dart';

class ExploreCardAnime extends StatelessWidget {
  const ExploreCardAnime({
    super.key,
    required this.isLoading,
    required this.anime,
  });
  final bool isLoading;
  final Anime? anime;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                child: ProgressiveImage(
                  placeholder: NetworkImage(anime?.images?.jpg?.imageUrl ?? ''),
                  thumbnail:
                      NetworkImage(anime?.images?.jpg?.smallImageUrl ?? ''),
                  image: NetworkImage(anime?.images?.jpg?.largeImageUrl ?? ''),
                  height: 150,
                  width: 300,
                  repeat: ImageRepeat.noRepeat,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          anime?.title ?? '',
                          style: GoogleFonts.reggaeOne(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Helpers.errorToast(
                            'bookmark feature is not ready yet',
                          );
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.bookmark,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    Helpers.truncateString(
                      text: anime?.synopsis ?? '',
                      maxChar: 150,
                    ),
                    style: GoogleFonts.inter(
                      fontSize:
                          Theme.of(context).textTheme.labelMedium?.fontSize,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    anime?.episodes == null
                        ? '-'
                        : '${anime?.episodes} Episodes',
                    style: GoogleFonts.reggaeOne(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize:
                          Theme.of(context).textTheme.labelMedium?.fontSize,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
