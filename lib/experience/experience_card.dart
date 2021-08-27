import 'package:flutter/material.dart';
import 'package:portfolio/components/portfolio_card.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        children: [
          Text("Exp Card Title"),
          Text("Exp Card subtitle"),
        ],
      ),
    );
  }
}
