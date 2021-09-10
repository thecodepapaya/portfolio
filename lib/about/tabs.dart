import 'package:flutter/material.dart';
import 'package:portfolio/components/analytics.dart';
import 'package:portfolio/components/scale_animator.dart';

class Tabs extends StatefulWidget {
  const Tabs({
    Key? key,
    required this.tabData,
  }) : super(key: key);

  final List<TabData> tabData;

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.tabData
          .map((d) => tab(d.tabName, d.globalKey, d.isSelected))
          .toList(),
    );
  }

  Widget tab(String text, GlobalKey key, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Scrollable.ensureVisible(
            key.currentContext!,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
          PortfolioAnalytics.log(LogType.tabClick, property: text);
        },
        child: ScaleAnimator(
          scaleExtent: 1.2,
          cursor: SystemMouseCursors.click,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabData {
  TabData({
    required this.globalKey,
    required this.tabName,
    this.isSelected = false,
  });

  final String tabName;
  final GlobalKey globalKey;
  bool isSelected;
}
