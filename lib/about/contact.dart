import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/analytics.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  final iconSize = Constants.faIconSizeRegular;

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
          iconData: FontAwesomeIcons.briefcase,
          url:
              "https://my-portfolio-ashutosh-singh.s3.ap-south-1.amazonaws.com/Ashutosh_Resume.pdf",
          tooltip: "Ashutosh's Resume",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.solidEnvelope,
          url: "mailto:hello@thecodepapaya.dev",
          tooltip: "Email Ashutosh",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.twitter,
          url: "https://twitter.com/thecodepapaya",
          tooltip: "Ashutosh's Twitter profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.github,
          url: "https://github.com/thecodepapaya",
          tooltip: "Ashutosh's GitHub profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.linkedinIn,
          url: "https://linkedin.com/in/ashutoshsingh05as",
          tooltip: "Ashutosh's LinkedIn profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.stackOverflow,
          url: "https://stackoverflow.com/users/10505839/ashutosh-singh",
          tooltip: "Ashutosh's StackOverflow profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.discord,
          url: "https://discord.com/users/878192996825305128",
          tooltip: "Ashutosh's Discord name tag",
        ),
      ],
    );
  }

  Widget contactIcon({
    required IconData iconData,
    required String url,
    required String tooltip,
  }) {
    return IconButton(
      onPressed: () {
        launchUrlString(url);
        PortfolioAnalytics.log(LogType.contactClick, property: url);
      },
      tooltip: tooltip,
      icon: FaIcon(
        iconData,
        size: iconSize,
      ),
    );
  }
}
