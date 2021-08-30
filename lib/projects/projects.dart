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
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog. The quick brown fox jumped",
    gitHub: "",
    link: "",
    technologies: ["Flutter", "Firebase"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
];
