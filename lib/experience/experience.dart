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
    position: "SDE",
    description:
        "I worked on x with y to achieve z without doing p or q. I worked on x with y to achieve z without doing p or q. I worked on x with y to achieve z without doing p or q.I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "Aug 21",
    endYearMonth: "Present",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "Intern",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "Jul 20",
    endYearMonth: "Jul 21",
  ),
  ExperienceData(
    organizationName: "Some Company",
    position: "Trainee",
    description: "I worked on x with y to achieve z without doing p or q.",
    startYearMonth: "Jun 19",
    endYearMonth: "Jul 20",
  ),
];
