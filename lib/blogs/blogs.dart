import 'package:flutter/material.dart';
import 'package:portfolio/blogs/blog_card.dart';
import 'package:portfolio/blogs/blog_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

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
        ...data.map((d) => BlogCard(data: d)).toList(),
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
          children: data.map((d) => BlogCard(data: d)).toList(),
        ),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        SizedBox(height: Constants.cardTitleSpacingMobile),
        ...data.map((d) => BlogCard(data: d)).toList(),
        SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  BlogData(
    title: "Deploying Flutter with Amazon EC2",
    description:
        "Learn to get full controll of your projects by deplying to EC2 AWS",
    tags: ['AWS', 'Flutter', 'Nodejs'],
    url: "url",
    read: 3,
  ),
  BlogData(
    title: "Deploying Flutter with Amazon EC2",
    description:
        "Learn to get full controll of your projects by deplying to EC2 AWS",
    tags: ['AWS', 'Flutter', 'Nodejs'],
    url: "url",
    read: 3,
  ),
  BlogData(
    title: "Deploying Flutter with Amazon EC2",
    description:
        "Learn to get full controll of your projects by deplying to EC2 AWS",
    tags: ['AWS', 'Flutter', 'Nodejs'],
    url: "url",
    read: 3,
  ),
  BlogData(
    title: "Deploying Flutter with Amazon EC2",
    description:
        "Learn to get full controll of your projects by deplying to EC2 AWS",
    tags: ['AWS', 'Flutter', 'Nodejs'],
    url: "url",
    read: 3,
  ),
];
