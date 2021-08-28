import 'package:flutter/material.dart';
import 'package:portfolio/blogs/blog_card.dart';
import 'package:portfolio/blogs/blog_data.dart';
import 'package:portfolio/constants.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Constants.aboutTopPadding),
        ...data.map((d) => BlogCard(data: d)).toList(),
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
