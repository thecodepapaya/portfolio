import 'package:flutter/material.dart';
import 'package:portfolio/home_page.dart';

@Deprecated("Routes aren't used anymore. Creating a simple page application.")
Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
    case HomePage.route:
      return MaterialPageRoute(builder: (_) => HomePage());
    // case ProjectsPage.route:
    //   return MaterialPageRoute(builder: (_) => ProjectsPage());

    default:
  }
}
