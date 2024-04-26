import 'package:flutter/material.dart';
import 'package:portfolio/components/analytics.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopView(context),
      tablet: (context) => tabletView(context),
      mobile: (context) => mobileView(context),
    );
  }

  Widget desktopView(BuildContext context) {
    return Container(
      height: Constants.aboutDesktopBottomPadding,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit +
              ". " +
              S.of(context).footerPower +
              "."),
          onTap: () {
            launchUrlString("https://dribbble.com/NicolasMzrd");
            PortfolioAnalytics.log(LogType.footerCreditClick);
          },
        ),
      ),
    );
  }

  Widget tabletView(BuildContext context) {
    return Container(
      height: Constants.cardTitleSpacingTablet * 3,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit),
          onTap: () {
            launchUrlString("https://dribbble.com/NicolasMzrd");
          },
        ),
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    return Container(
      height: Constants.cardTitleSpacingMobile * 3,
      alignment: Alignment.bottomCenter,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(S.of(context).footerCredit),
          onTap: () {
            launchUrlString("https://dribbble.com/NicolasMzrd");
          },
        ),
      ),
    );
  }
}
