import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/achievements/achievements.dart';
import 'package:portfolio/components/left_sider.dart';
import 'package:portfolio/components/right_sider.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/experience/experience.dart';
import 'package:portfolio/projects/projects.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  GlobalKey _projectKey = GlobalKey();
  GlobalKey _experienceKey = GlobalKey();
  GlobalKey _achievementKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: LeftSider(),
          ),
          SizedBox(width: Constants.homeHorizontalPadding),
          Expanded(
            child: About(),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              controller: _controller,
              child: Column(
                children: [
                  SizedBox(height: Constants.aboutTopPadding),
                  Projects(key: _projectKey),
                  Experience(key: _experienceKey),
                  Achievements(key: _achievementKey),
                  SizedBox(height: Constants.aboutBottomPadding),
                ],
              ),
            ),
          ),
          SizedBox(width: Constants.homeHorizontalPadding),
          RotatedBox(
            quarterTurns: 1,
            child: RightSider(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("T"),
        onPressed: () {
          Scrollable.ensureVisible(
            _experienceKey.currentContext!,
            duration: Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
