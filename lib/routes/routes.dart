import 'package:flutter/material.dart';
import 'package:zenime/view/pages/auth/forgot_password.dart';
import 'package:zenime/view/pages/auth/sign_in.dart';
import 'package:zenime/view/pages/auth/sign_up.dart';
import 'package:zenime/view/pages/detail/detail.dart';
import 'package:zenime/view/pages/explore.dart';
import 'package:zenime/view/pages/home.dart';
import 'package:zenime/view/pages/search_result/search_result.dart';
import 'package:zenime/view/pages/settings/credit.dart';
import 'package:zenime/view/pages/settings/settings.dart';
import 'package:zenime/view/pages/settings/theme.dart';

const String home = "/home";
const String explore = "/explore";
const String animeDetail = "/detail/anime";
const String mangaDetail = "/detail/manga";
const String searchResult = "/search_result";
const String random = "/random";
const String settings = "/settings";
const String language = "/settings/language";
const String theme = "/settings/theme";
const String credit = "/settings/credit";
const String register = "/register";
const String login = "/login";
const String forgotPassword = "/account/forgot";

final Map<String, WidgetBuilder> routes = {
  home: (context) => const Home(),
  explore: (context) => const ExplorePage(),
  animeDetail: (context) => DetailPage.anime(),
  mangaDetail: (context) => DetailPage.manga(),
  settings: (context) => const SettingsPage(),
  theme: (context) => const ChangeThemePage(),
  credit: (context) => const CreditPage(),
  forgotPassword: (context) => const ForgotPasswordPage(),
  login: (context) => const SignInPage(),
  register: (context) => const SignUpPage(),
  searchResult: (context) => const SearchResult(),
};
