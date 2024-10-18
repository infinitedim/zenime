import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/data/dummy.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/model/anime/anime.dart';
import 'package:zenime/model/icon_style.dart';
import 'package:zenime/model/manga/manga.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/shared/custom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  static AnimeDetail? animeDetail;
  static MangaDetail? mangaDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor: Colors.black.withOpacity(0.2),
              leading: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              centerTitle: true,
              title: Text(
                Helpers.truncateString(
                  text: animeDetailDummy.title ?? '',
                ),
                style: GoogleFonts.reggaeOne(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Image.network(
                  animeDetailDummy.images?['jpg']['large_image_url'],
                  fit: BoxFit.fitWidth,
                  height: SizeConfig.screenHeight / 3,
                  width: SizeConfig.screenWidth,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(120)),
                    Container(
                      width: SizeConfig.screenWidth - 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Text(
                            animeDetailDummy.title ?? '',
                            style: GoogleFonts.reggaeOne(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          Text(
                            '${animeDetailDummy.titleEnglish} / ${animeDetailDummy.titleJapanese}',
                            style: GoogleFonts.reggaeOne(
                              fontSize: 10,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Image.network(
                              animeDetailDummy.images?['jpg']
                                  ['large_image_url'],
                              fit: BoxFit.fitHeight,
                              height: SizeConfig.screenHeight / 2,
                              width: SizeConfig.screenWidth - 100,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
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
                              Fluttertoast.showToast(
                                msg: 'bookmark feature not ready yet',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Text('Synopsis', style: GoogleFonts.reggaeOne()),
                          Text(
                            animeDetailDummy.synopsis ?? '',
                            style: GoogleFonts.inter(),
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
