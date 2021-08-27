import 'package:flutter/material.dart';
import 'package:portfolio/components/portfolio_card.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        children: [
          Text("Projetc Card Title"),
          Text("Projetc Card subtitle"),
        ],
      ),
    );
  }
}
