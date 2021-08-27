import 'package:flutter/material.dart';
import 'package:portfolio/experience/experience_card.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExperienceCard(),
        ExperienceCard(),
        ExperienceCard(),
        ExperienceCard(),
      ],
    );
  }
}
