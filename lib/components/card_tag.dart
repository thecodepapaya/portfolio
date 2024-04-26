import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class CardTag extends StatelessWidget {
  const CardTag({
    Key? key,
    required this.tag,
    this.tagSize = 6,
  }) : super(key: key);

  final String tag;
  final double tagSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        color: ColorPalette.background,
        padding: EdgeInsets.all(tagSize),
        child: Text(
          tag.toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
