import 'package:flutter/material.dart';

class ScaleAnimator extends StatefulWidget {
  const ScaleAnimator({
    Key? key,
    required this.child,
    this.scaleExtent = 1.05,
  }) : super(key: key);

  final Widget child;
  final double scaleExtent;

  @override
  _ScaleAnimatorState createState() => _ScaleAnimatorState();
}

class _ScaleAnimatorState extends State<ScaleAnimator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      value: 0,
    );
    scaleAnimation =
        Tween<double>(begin: 1, end: widget.scaleExtent).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        _controller.forward();
      },
      onExit: (e) {
        _controller.reverse();
      },
      child: Transform.scale(
        scale: scaleAnimation.value,
        child: widget.child,
      ),
    );
  }
}
