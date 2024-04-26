import 'package:flutter/material.dart';
import 'package:portfolio/about/contact.dart';
import 'package:portfolio/about/tabs.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopView(context),
      tablet: (context) => tabletView(context),
      mobile: (context) => mobileView(context),
    );
  }

  Widget desktopView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Constants.aboutDesktopLeftPadding,
        Constants.aboutDesktopTopPadding,
        Constants.aboutDesktopRightPadding,
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
                  style: Theme.of(context).textTheme.displaySmall),
              Text(S.of(context).title + '.',
                  style: Theme.of(context).textTheme.displayLarge),
              SizedBox(height: 40),
              Text(S.of(context).aboutDesc,
                  style: Theme.of(context).textTheme.titleMedium),
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

  Widget tabletView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Constants.aboutTabletLeftPadding,
        Constants.aboutTabletTopPadding,
        Constants.aboutTabletRightPadding,
        Constants.aboutTabletBottomPadding,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).aboutGreeting(dayTime()),
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                S.of(context).title + '.',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 40),
              Text(
                S.of(context).aboutDesc,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: 80),
          const Contact(),
        ],
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Constants.aboutTabletLeftPadding,
        Constants.aboutTabletTopPadding,
        Constants.aboutTabletRightPadding,
        Constants.aboutTabletBottomPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  S.of(context).aboutGreeting(dayTime()),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              FittedBox(
                child: Text(
                  S.of(context).title + '.',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              SizedBox(height: 40),
              Text(
                S.of(context).aboutDesc,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: 80),
          FittedBox(child: Contact()),
        ],
      ),
    );
  }
}
