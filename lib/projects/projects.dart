import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/projects/project_card.dart';
import 'package:portfolio/projects/project_data.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Constants.aboutTopPadding),
        ...data.map((d) => ProjectCard(data: d)).toList(),
      ],
    );
  }
}

final data = [
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter", "Firebase"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
  ProjectCardData(
    title: "Sweet title",
    description:
        "The quick brown fox jumped upon the lazy dog. The quick brown fox jumped upon the lazy dog.",
    gitHub: "",
    link: "",
    technologies: ["Flutter"],
  ),
];
