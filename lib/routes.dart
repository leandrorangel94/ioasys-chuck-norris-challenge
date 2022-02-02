import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ioasys_api_lesson/modules/chuck_norris/pages/categories/categories_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      '/': (context) => const CategoriesPage(),
    };

    WidgetBuilder? builder = routes[settings.name!];
    return MaterialPageRoute(
        builder: (ctx) => builder!(ctx), settings: settings);
  }
}
