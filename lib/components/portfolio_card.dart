import 'package:flutter/material.dart';
import 'package:portfolio/components/scale_animator.dart';
import 'package:portfolio/utils/constants.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    Key? key,
    this.height = 200,
    this.cursor = SystemMouseCursors.basic,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final double height;
  final MouseCursor cursor;

  @override
  Widget build(BuildContext context) {
    return ScaleAnimator(
      cursor: cursor,
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
