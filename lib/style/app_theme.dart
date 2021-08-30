import 'package:flutter/material.dart';
import 'package:portfolio/style/colours.dart';
import 'package:portfolio/utils/constants.dart';

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
      button: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
      headline1: Theme.of(context)
          .textTheme
          .headline1
          ?.copyWith(color: Colors.white, fontSize: 84),
      headline2:
          Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
      headline3:
          Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white),
      headline4:
          Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
      headline5:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
      headline6:
          Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
      caption: Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(color: ColorPalette.dullWhite),
      overline: Theme.of(context)
          .textTheme
          .overline
          ?.copyWith(color: ColorPalette.dullWhite),
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
