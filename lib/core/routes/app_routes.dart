import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/routes/pages_route_names.dart';
import 'package:news_app/modules/home/home_view.dart';
import 'package:news_app/modules/splash/splash_view.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings sitting) {
    switch (sitting.name) {
      case PagesRoutNames.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: sitting);

      case PagesRoutNames.home:
        return MaterialPageRoute(
            builder: (context) => HomeView(), settings: sitting);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: sitting);
    }
  }
}
