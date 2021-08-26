import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
    case HomePage.route:
      return MaterialPageRoute(builder: (_) => HomePage());

    default:
  }
}
