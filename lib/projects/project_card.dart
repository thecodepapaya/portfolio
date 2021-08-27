import 'package:flutter/material.dart';
import 'package:portfolio/components/portfolio_card.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Projetc Card Title"),
          Text("Projetc Card subtitle"),
        ],
      ),
    );
  }
}
