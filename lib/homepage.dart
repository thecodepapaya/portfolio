import 'package:flutter/material.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/about/tabs.dart';
import 'package:portfolio/blogs/blogs.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/style/colours.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/experience/experience.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/projects/projects.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sticky_headers/sticky_headers.dart';
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
        padding: const EdgeInsets.all(Constants.globalPadding),
        child: ScreenTypeLayout(
          desktop: desktopView(),
          tablet: tabletView(context),
          mobile: mobileView(context),
        ),
      ),
    );
  }

  Widget desktopView() {
    return Row(
      children: [
        Expanded(child: Container()),
        SizedBox(
          width: Constants.halfScreenWidth,
          child: About(tabData: tabData),
        ),
        SizedBox(
          width: Constants.halfScreenWidth,
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
                SizedBox(height: Constants.aboutDesktopBottomPadding),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget tabletView(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          About(tabData: tabData),
          SizedBox(height: 100),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabProjects,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Projects(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabExperience,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Experience(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabBlog,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Blogs(),
          Footer(),
        ],
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    List<Widget> mobileWidgets = [
      About(tabData: tabData),
      SizedBox(height: 50),
      projectHeader(),
      experienceHeader(),
      blogHeader(),
      Footer(),
    ];
    return ListView.builder(
      itemCount: mobileWidgets.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return mobileWidgets[index];
      },
    );
  }

  Widget projectHeader() {
    return StickyHeader(
      header: Container(
        padding: EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabProjects.split("  ")[1],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
      content: Projects(),
    );
  }

  Widget experienceHeader() {
    return StickyHeader(
      header: Container(
        padding: EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabExperience.split("  ")[1],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
      content: Experience(),
    );
  }

  Widget blogHeader() {
    return StickyHeader(
      header: Container(
        padding: EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabBlog.split("  ")[1],
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
      content: Blogs(),
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
