import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/core/routes/pages_route_names.dart';
import 'package:news_app/main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      navigatorKey.currentState!
          .pushNamedAndRemoveUntil(PagesRoutNames.home, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/news.logo.png",
            height: 180,
          )
        ],
      ),
    );
  }
}
