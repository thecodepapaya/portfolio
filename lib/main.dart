import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/style/app_theme.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/routes.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(
      desktop: (Constants.halfScreenWidth + Constants.globalPadding) * 2,
      tablet: 880,
      watch: 200,
    ),
  );
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
        useMaterial3: false,
        scaffoldBackgroundColor: ColorPalette.background,
        primaryColor: ColorPalette.background,
        cardTheme: PortfolioTheme.cardTheme(context).data,
        textTheme: PortfolioTheme.textTheme(context),
        iconTheme: PortfolioTheme.iconTheme(context),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
    );
  }
}
