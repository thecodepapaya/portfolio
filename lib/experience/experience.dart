import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/experience/experience_card.dart';
import 'package:portfolio/experience/experience_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => desktopView(),
      tablet: (_) => tabletView(),
      mobile: (_) => mobileView(),
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
    organizationName: "Even Healthcare",
    position: "Software Engineer",
    description:
        "Building an awesome product for creators all around the world.",
    startYearMonth: "Aug 23",
    endYearMonth: "Present",
  ),
  ExperienceData(
    organizationName: "Qoohoo",
    position: "Product Engineer",
    description:
        "Building an awesome product for creators all around the world.",
    startYearMonth: "Oct 21",
    endYearMonth: "July 23",
  ),
  ExperienceData(
    organizationName: "National Informatics Centre | Govt of India",
    position: "Trainee",
    description:
        "Developed frontend components to house image processing utilities on NIC website. Integrated microservice APIs with Angular frontend.",
    startYearMonth: "Jun 21",
    endYearMonth: "Jul 21",
  ),
  ExperienceData(
    organizationName: "Kowi Lifestyle Pvt Ltd",
    position: "Full stack Developer",
    description:
        "Created company's core product from scratch. Wore different hats including SDE, DevOps and QA.",
    startYearMonth: "May 21",
    endYearMonth: "Jul 21",
  ),
  ExperienceData(
    organizationName: "Blindside HB GmbH",
    position: "Software Developer",
    description:
        "Worked on the company's core product to enhance UX, add backend connectivity and modularize existing code.",
    startYearMonth: "Sep 20",
    endYearMonth: "Nov 20",
  ),
];
