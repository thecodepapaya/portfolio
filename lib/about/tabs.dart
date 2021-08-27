import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.projectKey,
    required this.experienceKey,
    required this.achievementKey,
  }) : super(key: key);

  final GlobalKey projectKey;
  final GlobalKey experienceKey;
  final GlobalKey achievementKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tab("Experience", experienceKey),
        tab("Achievement", achievementKey),
        tab("Project", projectKey),
      ],
    );
  }

  Widget tab(String text, GlobalKey key) {
    return TextButton(
      onPressed: () {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Text(text),
    );
  }
}
