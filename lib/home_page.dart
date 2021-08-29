import 'package:flutter/material.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/about/tabs.dart';
import 'package:portfolio/blogs/blogs.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/experience/experience.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/projects/projects.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  GlobalKey projectKey = GlobalKey();
  GlobalKey experienceKey = GlobalKey();
  GlobalKey blogKey = GlobalKey();

  List<TabData> tabData = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tabData = [
      TabData(
        globalKey: projectKey,
        tabName: S.of(context).tabProjects,
        isSelected: true,
      ),
      TabData(
        globalKey: experienceKey,
        tabName: S.of(context).tabExperience,
      ),
      TabData(
        globalKey: blogKey,
        tabName: S.of(context).tabBlog,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(width: Constants.homeHorizontalPadding),
            Expanded(child: About(tabData: tabData)),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                controller: _controller,
                child: Column(
                  children: [
                    VisibilityDetector(
                      key: Key(tabData[0].tabName),
                      child: Projects(key: projectKey),
                      onVisibilityChanged: projectVisibility,
                    ),
                    VisibilityDetector(
                      key: Key(tabData[1].tabName),
                      child: Experience(key: experienceKey),
                      onVisibilityChanged: experienceVisibility,
                    ),
                    VisibilityDetector(
                      key: Key(tabData[2].tabName),
                      child: Blogs(key: blogKey),
                      onVisibilityChanged: blogVisibility,
                    ),
                    SizedBox(height: Constants.aboutBottomPadding),
                  ],
                ),
              ),
            ),
            SizedBox(width: Constants.homeHorizontalPadding),
          ],
        ),
      ),
    );
  }

  void projectVisibility(VisibilityInfo visibility) {
    final visiblePercentage = visibility.visibleFraction * 100;
    if (visiblePercentage > 50) {
      setAllFalse();
      setState(() {
        tabData[0].isSelected = true;
      });
    }
  }

  void experienceVisibility(VisibilityInfo visibility) {
    final visiblePercentage = visibility.visibleFraction * 100;
    if (visiblePercentage > 50) {
      setAllFalse();
      setState(() {
        tabData[1].isSelected = true;
      });
    }
  }

  void blogVisibility(VisibilityInfo visibility) {
    final visiblePercentage = visibility.visibleFraction * 100;
    if (visiblePercentage > 50) {
      setAllFalse();
      setState(() {
        tabData[2].isSelected = true;
      });
    }
  }

  void setAllFalse() {
    tabData.forEach((d) {
      d.isSelected = false;
    });
  }
}
