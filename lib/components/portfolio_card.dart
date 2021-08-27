import 'package:flutter/material.dart';
import 'package:portfolio/components/scale_animator.dart';
import 'package:portfolio/constants.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    Key? key,
    required this.child,
    this.height = 200,
  }) : super(key: key);

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ScaleAnimator(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(35),
            width: Constants.aspectRatio * Constants.cardHeight,
            height: Constants.cardHeight,
            child: child,
          ),
        ),
      ),
    );
  }
}
