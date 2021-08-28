import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/experience/experience_card.dart';
import 'package:portfolio/experience/experience_data.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Constants.aboutTopPadding),
        ...data.map((d) => ExperienceCard(data: d)),
      ],
    );
  }
}

final data = [
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description:
        "I worked on x with y to achieve z without doing p or q. I worked on x with y to achieve z without doing p or q. I worked on x with y to achieve z without doing p or q.I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "2020",
    endYearMonth: "Present",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "2020",
    endYearMonth: "2021",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "JUN 19",
    endYearMonth: "JUL 20",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "JUN",
    endYearMonth: "JUL",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "JUN",
    endYearMonth: "JUL",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE1",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "JUN 19",
    endYearMonth: "JUL 19",
  ),
];
