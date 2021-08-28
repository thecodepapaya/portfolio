import 'package:flutter/material.dart';
import 'package:portfolio/about/contact.dart';
import 'package:portfolio/about/tabs.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/generated/l10n.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
    required this.tabData,
  }) : super(key: key);

  final List<TabData> tabData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Constants.aboutLeftPadding,
        Constants.aboutTopPadding,
        Constants.aboutRightPadding,
        Constants.aboutBottomPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).aboutGreeting,
                  style: Theme.of(context).textTheme.headline2),
              Text(S.of(context).title + '.',
                  style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 20),
              Text(S.of(context).aboutDesc,
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
          Tabs(tabData: tabData),
          const Contact(),
        ],
      ),
    );
  }
}
