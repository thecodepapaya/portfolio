import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/components/left_sider.dart';
import 'package:portfolio/components/right_sider.dart';
import 'package:portfolio/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

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
          Expanded(child: About()),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              controller: _controller,
              child: Column(
                children: [
                  Container(height: 490, color: Colors.green),
                  Container(height: 490, color: Colors.yellow),
                  Container(height: 490, color: Colors.pink),
                  Container(height: 490, color: Colors.orange),
                  Container(height: 490, color: Colors.red),
                  Container(height: 490, color: Colors.blue),
                  Container(height: 490, color: Colors.white),
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
          log(_controller.position.toString());
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
