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
                  style: Theme.of(context).textTheme.bodyLarge),
              Text("bodyText2: " + text,
                  style: Theme.of(context).textTheme.bodyMedium),
              Text("button: " + text,
                  style: Theme.of(context).textTheme.labelLarge),
              Text("headline1: " + text,
                  style: Theme.of(context).textTheme.displayLarge),
              Text("headline2: " + text,
                  style: Theme.of(context).textTheme.displayMedium),
              Text("headline3: " + text,
                  style: Theme.of(context).textTheme.displaySmall),
              Text("headline4: " + text,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text("headline5: " + text,
                  style: Theme.of(context).textTheme.headlineSmall),
              Text("headline6: " + text,
                  style: Theme.of(context).textTheme.titleLarge),
              Text("caption: " + text,
                  style: Theme.of(context).textTheme.bodySmall),
              Text("overline: " + text,
                  style: Theme.of(context).textTheme.labelSmall),
              Text("subtitle1: " + text,
                  style: Theme.of(context).textTheme.titleMedium),
              Text("subtitle2: " + text,
                  style: Theme.of(context).textTheme.titleSmall),
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
