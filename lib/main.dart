import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio/404.dart';
import 'package:portfolio/style/colours.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/style/text_demo.dart';
import 'package:portfolio/style/app_theme.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) {
        return S.of(context).title;
      },
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPalette.background,
        primaryColor: ColorPalette.background,
        accentColor: ColorPalette.h1Text,
        cardTheme: PortfolioTheme.cardTheme(context),
        textTheme: PortfolioTheme.textTheme(context),
        iconTheme: PortfolioTheme.iconTheme(context),
      ),
      routes: {
        '/': (_) => HomePage(),
        HomePage.route: (_) => HomePage(),
        TextDemo.route: (_) => TextDemo(),
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(builder: (_) => NotFound404());
      },
      initialRoute: '/',
    );
  }
}
