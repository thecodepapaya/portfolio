import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/constants.dart';

class PortfolioTheme {
  static TextTheme textTheme(BuildContext context) {
    return TextTheme(
      bodyLarge: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: ColorPalette.highlightText),
      bodyMedium: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: ColorPalette.descriptionText),
      labelLarge:
          Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
      displayLarge: Theme.of(context)
          .textTheme
          .displayLarge
          ?.copyWith(color: Colors.white, fontSize: 84),
      displayMedium: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Colors.white),
      displaySmall: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(color: Colors.white),
      headlineMedium: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.white),
      headlineSmall: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.white),
      titleLarge:
          Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
      bodySmall: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: ColorPalette.dullWhite),
      labelSmall: Theme.of(context)
          .textTheme
          .labelSmall
          ?.copyWith(color: ColorPalette.dullWhite),
      titleMedium: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: ColorPalette.icon),
      titleSmall: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: ColorPalette.offWhiteText),
    );
  }

  static CardTheme cardTheme(BuildContext context) {
    return CardTheme(
      margin: EdgeInsets.all(Constants.cardMargin),
      elevation: 12,
      color: ColorPalette.backgroundLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    );
  }

  static IconThemeData iconTheme(context) {
    return IconThemeData(
      color: Colors.white,
    );
  }
}
