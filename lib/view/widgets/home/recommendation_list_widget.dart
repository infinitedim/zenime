import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/size_config.dart';

class RecommendationListWidget extends GetView<ThemeController> {
  const RecommendationListWidget({
    super.key,
    required this.title,
    required this.image,
    this.episodes,
    required this.isAnime,
    required this.isLoading,
    required this.onTap,
  });

  final String title;
  final String image;
  final int? episodes;
  final bool isAnime;
  final bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: SizedBox(
        width: SizeConfig.screenWidth - 100,
        child: ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.all(5),
          title: Text(
            Helpers.truncateString(
              text: title,
              maxChar: 20,
            ),
            style: GoogleFonts.inter(
              fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              if (image != '' && image.isNotEmpty)
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: ProgressiveImage(
                    placeholder: NetworkImage(image),
                    thumbnail: NetworkImage(image),
                    image: NetworkImage(image),
                    repeat: ImageRepeat.noRepeat,
                    height: SizeConfig.screenHeight / 2.5,
                    width: SizeConfig.screenWidth,
                    fit: BoxFit.fill,
                  ),
                )
              else
                Container(
                  height: SizeConfig.screenHeight / 2.5,
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.grey.shade200.withOpacity(0.2),
                  ),
                ),
              const SizedBox(height: 10),
              if (episodes != 0)
                Text(
                  '$episodes ${isAnime ? "Episodes" : "Chapters"}',
                  style: GoogleFonts.reggaeOne(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
                  ),
                ),
              if (episodes == 0)
                Text(
                  '-',
                  style: GoogleFonts.reggaeOne(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
