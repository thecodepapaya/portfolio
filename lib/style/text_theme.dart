import 'package:flutter/material.dart';
import 'package:portfolio/style/colours.dart';

class PortfolioTheme {
  static TextTheme textTheme(BuildContext context) {
    return TextTheme(
      bodyText1: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(color: ColorPalette.highlightText),
      bodyText2: Theme.of(context)
          .textTheme
          .bodyText2
          ?.copyWith(color: ColorPalette.descriptionText),
      button: Theme.of(context)
          .textTheme
          .button
          ?.copyWith(color: ColorPalette.h3Text),
      headline1: Theme.of(context)
          .textTheme
          .headline1
          ?.copyWith(color: ColorPalette.h1Text),
      headline2: Theme.of(context)
          .textTheme
          .headline2
          ?.copyWith(color: ColorPalette.h2Text),
      headline3: Theme.of(context)
          .textTheme
          .headline3
          ?.copyWith(color: ColorPalette.h3Text),
      headline4: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: ColorPalette.h4Text),
      headline5: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: ColorPalette.h5Text),
      headline6: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: ColorPalette.h6Text),
      caption: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(color: ColorPalette.h6Text),
      overline: Theme.of(context)
          .textTheme
          .overline
          ?.copyWith(color: ColorPalette.h6Text),
      subtitle1: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: ColorPalette.icon),
      subtitle2: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: ColorPalette.offWhiteText),
    );
  }

  static CardTheme cardTheme(BuildContext context) {
    return CardTheme(
      elevation: 12,
      color: ColorPalette.backgroundLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    );
  }
}
