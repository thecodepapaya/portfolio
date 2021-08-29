import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.aboutBottomPadding,
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
