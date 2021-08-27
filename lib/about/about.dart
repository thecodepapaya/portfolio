import 'package:flutter/material.dart';
import 'package:portfolio/about/contact.dart';
import 'package:portfolio/generated/l10n.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 120, 180, 120),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(S.of(context).greeting,
              style: Theme.of(context).textTheme.headline2),
          Text(S.of(context).title,
              style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 20),
          Text(S.of(context).aboutDesc,
              style: Theme.of(context).textTheme.subtitle1),
          Contact(),
        ],
      ),
    );
  }
}
