import 'package:flutter/material.dart';
import 'package:portfolio/404.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/style/text_demo.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
    // return MaterialPageRoute(
    //     builder: (_) => NotFound404(), settings: settings);
    case HomePage.route:
      return MaterialPageRoute(builder: (_) => HomePage(), settings: settings);
    case TextDemo.route:
      return MaterialPageRoute(builder: (_) => TextDemo(), settings: settings);
    default:
      return MaterialPageRoute(
          builder: (_) => NotFound404(), settings: settings);
  }
}
