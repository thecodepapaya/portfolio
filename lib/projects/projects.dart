import 'package:flutter/material.dart';
import 'package:portfolio/projects/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectCard(),
        ProjectCard(),
        ProjectCard(),
        ProjectCard(),
      ],
    );
  }
}
