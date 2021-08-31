import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/projects/project_card.dart';
import 'package:portfolio/projects/project_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktopView(),
      tablet: tabletView(),
      mobile: mobileView(),
    );
  }

  Widget desktopView() {
    return Column(
      children: [
        SizedBox(height: Constants.aboutDesktopTopPadding),
        ...data.map((d) => ProjectCard(data: d)).toList(),
      ],
    );
  }

  Widget tabletView() {
    return Column(
      children: [
        SizedBox(height: Constants.cardTitleSpacingTablet),
        GridView.count(
          childAspectRatio: Constants.cardAspectRatioTablet,
          mainAxisSpacing: Constants.cardSpacing,
          crossAxisSpacing: Constants.cardSpacing,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: data.map((d) => ProjectCard(data: d)).toList(),
        ),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        SizedBox(height: Constants.cardTitleSpacingTablet),
        ...data.map((d) => ProjectCard(data: d)).toList(),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  ProjectData(
    title: "Udhari",
    description:
        "An intelligent money management solution for one’s daily expenditure. Published to Play Store and downloaded hundreds of times.",
    gitHub: "https://github.com/thecodepapaya/udhari",
    link:
        "https://play.google.com/store/apps/details?id=com.thecodepapaya.udhari",
    technologies: ["Flutter", "Django", "DRF", "Dart"],
  ),
  ProjectData(
    title: "FASE - Post-covid attendance solution",
    description:
        "A reliable WLAN and bluetooth based solution for attendance management in the institute in a post-covid era.",
    gitHub: "https://github.com/thecodepapaya/fase-backend",
    link: "",
    technologies: ["Django", "DRF", "Flutter", "Python", "Dart"],
  ),
  ProjectData(
    title: "show_up_animation",
    description:
        "Flutter package to allow developers to integrate simple and clean animations into their apps with no boilerplate code.",
    gitHub: "https://github.com/thecodepapaya/show_up_animation/",
    link: "https://pub.dev/packages/show_up_animation",
    technologies: ["Flutter", "Dart"],
  ),
  ProjectData(
    title: "DevFest 2019 Gandhinagar Mobile App",
    description:
        "Designed and developed Flutter application for 500+ attendees of DevFest GNR to relay event-related information.",
    gitHub: "https://github.com/GDG-GANDHINAGAR/devfest-19-mobile",
    link: "https://gdg.community.dev/gdg-gandhinagar/",
    technologies: ["Flutter", "Firebase", "Dart"],
  ),
];
