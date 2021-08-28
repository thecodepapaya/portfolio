import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.tabData,
  }) : super(key: key);

  final List<TabData> tabData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tabData
          .map((d) => tab(d.tabName, d.globalKey, d.isSelected))
          .toList(),
    );
  }

  Widget tab(String text, GlobalKey key, bool isSelected) {
    return TextButton(
      // style: isSelected ? TextButtonTheme(data: data, child: child) : ButtonStyle(),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          return isSelected ? Colors.red : Colors.yellow;
        }),
      ),
      child: Text(text),
      onPressed: () {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
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
