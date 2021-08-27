import 'package:flutter/material.dart';
import 'package:portfolio/achievements/achievement_card.dart';
import 'package:portfolio/constants.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Constants.aboutTopPadding),
        AchievementCard(),
        AchievementCard(),
        AchievementCard(),
        AchievementCard(),
      ],
    );
  }
}
