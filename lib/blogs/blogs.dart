import 'package:flutter/material.dart';
import 'package:portfolio/blogs/blog_card.dart';
import 'package:portfolio/constants.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Constants.aboutTopPadding),
        BlogCard(),
        BlogCard(),
        BlogCard(),
        BlogCard(),
      ],
    );
  }
}
