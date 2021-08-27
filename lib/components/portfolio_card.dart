import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class PortfolioCard extends StatefulWidget {
  const PortfolioCard({
    Key? key,
    required this.child,
    this.height = 200,
  }) : super(key: key);

  final Widget child;
  final double height;

  @override
  _PortfolioCardState createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
  double scale = 1;
  late Timer timer;
  double cardHeight = Constants.cardHeight;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          cardHeight *= 1.1;
        });
        timer = Timer(Duration(seconds: 3), () {
          setState(() {
            cardHeight = Constants.cardHeight;
          });
        });
      },
      onExit: (e) {
        setState(() {
          cardHeight = Constants.cardHeight;
        });
      },
      child: Card(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.all(35),
          width: Constants.aspectRatio * cardHeight,
          height: cardHeight,
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
