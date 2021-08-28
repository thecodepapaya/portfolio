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
    return ScaleAnimator(
      cursor: SystemMouseCursors.basic,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Constants.cardPaddingVert,
            horizontal: Constants.cardPaddingHori,
          ),
          width: Constants.cardAspectRatio * Constants.cardHeight,
          height: Constants.cardHeight,
          child: child,
        ),
      ),
    );
  }
}
