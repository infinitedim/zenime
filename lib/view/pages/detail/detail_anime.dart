import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/helpers/helpers.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/view/widgets/detail/custom_detail_information_widget.dart';
import 'package:zenime/view/widgets/detail/detail_poster.dart';
import 'package:intl/intl.dart';

class DetailAnime extends GetView<AnimeController> {
  const DetailAnime({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    DateFormat formatter = DateFormat('yMMMMd');
    return GetBuilder<AnimeController>(
      init: AnimeController(),
      initState: (initState) {
        if (id != null) {
          controller.getAnimeFullById(id: id!);
        }
      },
      builder: (controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 56),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: AppBar(
                  backgroundColor: Colors.black.withOpacity(0.1),
                  leading: SizedBox(
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(home);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Theme.of(context).colorScheme.primary,
                        size: 20,
                      ),
                    ),
                  ),
                  centerTitle: true,
                  title: Text(
                    Helpers.truncateString(
                      text: controller.animeDetail?.title ?? 'Detail',
                    ),
                    style: GoogleFonts.reggaeOne(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: controller.animeDetail == null
              ? Container(
                  height: SizeConfig.screenHeight,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              : SizedBox(
                  height: SizeConfig.screenHeight,
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Container(
                            height: SizeConfig.screenHeight / 3,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  controller.animeDetail?.images?.jpg
                                          ?.largeImageUrl ??
                                      '',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: getProportionateScreenHeight(120),
                              ),
                              Container(
                                width: SizeConfig.screenWidth - 50,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: DetailPoster.anime(),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: getProportionateScreenHeight(20),
                                    ),
                                    Text(
                                      'Synopsis',
                                      style: GoogleFonts.reggaeOne(),
                                    ),
                                    Text(
                                      controller.animeDetail?.synopsis ?? '',
                                      style: GoogleFonts.inter(),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Detail ${controller.animeDetail?.title}',
                                      style: GoogleFonts.inter(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(10),
                                    ),
                                    Divider(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(10),
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Title',
                                      value:
                                          controller.animeDetail?.title ?? '',
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'English title',
                                      value: controller
                                              .animeDetail?.titleEnglish ??
                                          '',
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Japanese title',
                                      value: controller
                                              .animeDetail?.titleJapanese ??
                                          '',
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Status',
                                      value:
                                          controller.animeDetail?.status ?? '',
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Release date',
                                      value: formatter.format(
                                        controller.animeDetail?.aired?.from ??
                                            DateTime.now(),
                                      ),
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Season',
                                      value: controller.animeDetail?.season
                                              ?.toUpperCase() ??
                                          '-',
                                    ),
                                    CustomDetailInformationWidget(
                                      title: 'Type',
                                      value: controller.animeDetail?.type ?? '',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
