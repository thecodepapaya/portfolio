import 'package:flutter/material.dart';
import 'package:portfolio/achievements/achievement_card.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AchievementCard(),
        AchievementCard(),
        AchievementCard(),
        AchievementCard(),
      ],
    );
  }
}
