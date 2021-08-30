import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktopView(context),
      tablet: tabletView(context),
      mobile: mobileView(context),
    );
  }

  Widget desktopView(BuildContext context) {
    return Container(
      height: Constants.aboutDesktopBottomPadding,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit),
          onTap: () {
            launch("https://dribbble.com/NicolasMzrd");
          },
        ),
      ),
    );
  }

  Widget tabletView(BuildContext context) {
    return Container(
      height: Constants.cardTitleSpacing * 3,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit),
          onTap: () {
            launch("https://dribbble.com/NicolasMzrd");
          },
        ),
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    return Container(
      height: Constants.aboutDesktopBottomPadding,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit),
          onTap: () {
            launch("https://dribbble.com/NicolasMzrd");
          },
        ),
      ),
    );
  }
}
