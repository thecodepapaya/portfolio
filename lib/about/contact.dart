import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  final iconSize = Constants.faIconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/me.webp"),
          minRadius: 30,
        ),
        SizedBox(width: 50),
        contactIcon(
          iconData: FontAwesomeIcons.solidEnvelope,
          url: "mailto:thecodepapaya@gmail.com",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.twitter,
          url: "https://twitter.com/thecodepapaya",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.github,
          url: "https://github.com/thecodepapaya",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.linkedinIn,
          url: "https://linkedin.com/in/ashutoshsingh05as",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.stackOverflow,
          url: "https://stackoverflow.com/users/10505839/ashutosh-singh",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.discord,
          url: "https://discord.com/users/878192996825305128",
        ),
      ],
    );
  }

  Widget contactIcon({required IconData iconData, required String url}) {
    return Column(
      children: [
        SizedBox(width: 5),
        IconButton(
          onPressed: () {
            launch(url);
          },
          icon: FaIcon(
            iconData,
            size: iconSize,
          ),
        ),
      ],
    );
  }
}
