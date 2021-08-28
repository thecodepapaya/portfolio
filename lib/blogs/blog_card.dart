import 'package:flutter/material.dart';
import 'package:portfolio/components/portfolio_card.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        children: [
          Text("Blog Card Title"),
          Text("Blog Card subtitle"),
        ],
      ),
    );
  }
}
