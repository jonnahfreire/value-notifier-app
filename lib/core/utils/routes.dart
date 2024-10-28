import 'package:app/presentation/pages/detail/detail_page.dart';
import 'package:app/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String index = "/";
  static String home = "/home";
  static String detail = "/detail";

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (ctx) => const HomePage(),
    detail: (ctx) => const DetailPage(),
  };
}
