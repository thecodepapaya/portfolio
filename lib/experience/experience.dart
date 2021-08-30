import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/experience/experience_card.dart';
import 'package:portfolio/experience/experience_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
        ...data.map((d) => ExperienceCard(data: d)),
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
          children: data.map((d) => ExperienceCard(data: d)).toList(),
        ),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        SizedBox(height: Constants.cardTitleSpacingMobile),
        ...data.map((d) => ExperienceCard(data: d)),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  ExperienceData(
    organizationName: "Some Company",
    position: "SDE",
    description: "I worked on x with y to achieve z without doing p or q.",
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
