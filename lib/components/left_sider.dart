import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class LeftSider extends StatelessWidget {
  const LeftSider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).leftSider);
  }
}
