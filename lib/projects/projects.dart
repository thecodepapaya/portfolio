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
        SizedBox(height: Constants.cardTitleSpacing),
        GridView.count(
          childAspectRatio: Constants.cardAspectRatio,
          mainAxisSpacing: Constants.cardSpacing,
          crossAxisSpacing: Constants.cardSpacing,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: data.map((d) => ProjectCard(data: d)).toList(),
        ),
        SizedBox(height: Constants.cardTitleSpacing * 3),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        // SizedBox(height: Constants.aboutTopPadding),
        ...data.map((d) => ProjectCard(data: d)).toList(),
      ],
    );
  }
}

final data = [
  ProjectData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
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
