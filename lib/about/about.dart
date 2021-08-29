import 'package:flutter/material.dart';
import 'package:portfolio/about/contact.dart';
import 'package:portfolio/about/tabs.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/generated/l10n.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
    required this.tabData,
  }) : super(key: key);

  final List<TabData> tabData;

  String dayTime() {
    final int hour = DateTime.now().toLocal().hour;
    if (hour >= 4 && hour < 8) return 'em';
    if (hour >= 8 && hour < 12) return 'm';
    if (hour >= 12 && hour < 16) return 'a';
    if (hour >= 16 && hour < 22) return 'e';
    if (hour >= 22 || hour < 4) return 'n';
    return 'other';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Constants.aboutLeftPadding,
        Constants.aboutTopPadding,
        Constants.aboutRightPadding,
        0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).aboutGreeting(dayTime()),
                  style: Theme.of(context).textTheme.headline3),
              Text(S.of(context).title + '.',
                  style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 40),
              Text(S.of(context).aboutDesc,
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
          Tabs(tabData: tabData),
          Column(
            children: [
              const Contact(),
              Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
