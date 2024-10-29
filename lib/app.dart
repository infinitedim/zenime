import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenime/controller/anime_controller.dart';
import 'package:zenime/controller/auth_controller.dart';
import 'package:zenime/controller/manga_controller.dart';
import 'package:zenime/controller/theme_controller.dart';
import 'package:zenime/routes/routes.dart';
import 'package:zenime/size_config.dart';
import 'package:zenime/theme.dart';

class ZenimeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.put(AnimeController());
    Get.put(MangaController());
  }
}

class ZenimeApp extends GetView<ThemeController> {
  const ZenimeApp({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<AuthController>(
      init: AuthController(),
      initState: (initState) {},
      builder: (auth) {
        return GetMaterialApp(
          title: 'Zenime',
          debugShowCheckedModeBanner: false,
          initialBinding: ZenimeBinding(),
          darkTheme: ZenimeTheme.darkTheme(),
          theme: ZenimeTheme.lightTheme(),
          themeMode: controller.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          initialRoute: auth.hasLoggedIn ? home : login,
          defaultTransition: Transition.cupertino,
          routes: routes,
        );
      },
    );
  }
}
