import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/model/manga/top_manga.dart';

class ExploreCardManga extends StatelessWidget {
  const ExploreCardManga({
    super.key,
    required this.isLoading,
    required this.manga,
  });
  final bool isLoading;
  final Manga? manga;

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
                  placeholder: NetworkImage(manga?.images?.jpg?.imageUrl ?? ''),
                  thumbnail:
                      NetworkImage(manga?.images?.jpg?.smallImageUrl ?? ''),
                  image: NetworkImage(manga?.images?.jpg?.largeImageUrl ?? ''),
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
                          manga?.title ?? '',
                          style: GoogleFonts.reggaeOne(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Helpers.errorToast(
                            'bookmark features is not ready yet',
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
                      text: manga?.synopsis ?? '',
                      maxChar: 150,
                    ),
                    style: GoogleFonts.inter(
                      fontSize:
                          Theme.of(context).textTheme.labelMedium?.fontSize,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    manga?.chapters == null
                        ? '-'
                        : '${manga?.chapters} Chapters',
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
