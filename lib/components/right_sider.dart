import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

class RightSider extends StatelessWidget {
  const RightSider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).rightSider);
  }
}
