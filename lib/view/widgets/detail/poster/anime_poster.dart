import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/model/anime/anime.dart';
import 'package:zenime/model/icon_style.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';

class AnimePoster extends GetView<AnimeController> {
  const AnimePoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AnimeDetail? anime = controller.animeDetail;
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(
          anime?.title ?? '',
          style: GoogleFonts.reggaeOne(
            fontSize: 14,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(
          '${anime?.titleEnglish} / ${anime?.titleJapanese}',
          style: GoogleFonts.reggaeOne(
            fontSize: 10,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          child: ProgressiveImage(
            placeholder: NetworkImage(anime?.images?['jpg']['image_url']),
            thumbnail: NetworkImage(anime?.images?['jpg']['small_image_url']),
            image: NetworkImage(anime?.images?['jpg']['large_image_url']),
            height: SizeConfig.screenHeight / 2,
            width: SizeConfig.screenWidth - 100,
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        CustomButton(
          text: 'Bookmark',
          buttonStyle: ButtonStyle(
            shape: WidgetStatePropertyAll<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
          height: 40,
          icon: FontAwesomeIcons.bookmark,
          iconStyle: IconStyle(
            iconColor: Theme.of(context).colorScheme.surface,
          ),
          onPressed: () {
            Helpers.bookmarkErrorToast();
          },
        )
      ],
    );
  }
}
