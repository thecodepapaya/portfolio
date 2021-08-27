import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  static const String route = "/text";

  final String text = 'The quick brown fox jumped upon the lazy dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("bodyText1: " + text,
                  style: Theme.of(context).textTheme.bodyText1),
              Text("bodyText2: " + text,
                  style: Theme.of(context).textTheme.bodyText2),
              Text("button: " + text,
                  style: Theme.of(context).textTheme.button),
              Text("headline1: " + text,
                  style: Theme.of(context).textTheme.headline1),
              Text("headline2: " + text,
                  style: Theme.of(context).textTheme.headline2),
              Text("headline3: " + text,
                  style: Theme.of(context).textTheme.headline3),
              Text("headline4: " + text,
                  style: Theme.of(context).textTheme.headline4),
              Text("headline5: " + text,
                  style: Theme.of(context).textTheme.headline5),
              Text("headline6: " + text,
                  style: Theme.of(context).textTheme.headline6),
              Text("caption: " + text,
                  style: Theme.of(context).textTheme.caption),
              Text("overline: " + text,
                  style: Theme.of(context).textTheme.overline),
              Text("subtitle1: " + text,
                  style: Theme.of(context).textTheme.subtitle1),
              Text("subtitle2: " + text,
                  style: Theme.of(context).textTheme.subtitle2),
              SizedBox(height: 50),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Hello World"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
