import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Text(text, style: Theme.of(context).textTheme.bodyText1),
              Text(text, style: Theme.of(context).textTheme.bodyText2),
              Text(text, style: Theme.of(context).textTheme.button),
              Text(text, style: Theme.of(context).textTheme.headline1),
              Text(text, style: Theme.of(context).textTheme.headline2),
              Text(text, style: Theme.of(context).textTheme.headline3),
              Text(text, style: Theme.of(context).textTheme.headline4),
              Text(text, style: Theme.of(context).textTheme.headline5),
              Text(text, style: Theme.of(context).textTheme.headline6),
              Text(text, style: Theme.of(context).textTheme.caption),
              Text(text, style: Theme.of(context).textTheme.overline),
              Text(text, style: Theme.of(context).textTheme.subtitle1),
              Text(text, style: Theme.of(context).textTheme.subtitle2),
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, ProjectsPage.route);
      //   },
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
