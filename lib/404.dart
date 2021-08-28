import 'package:flutter/material.dart';
import 'package:portfolio/components/scale_animator.dart';
import 'package:portfolio/generated/l10n.dart';

class NotFound404 extends StatefulWidget {
  const NotFound404({Key? key}) : super(key: key);

  @override
  _NotFound404State createState() => _NotFound404State();
}

class _NotFound404State extends State<NotFound404> {
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(250.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).notFoundInterjaction,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                S.of(context).notFoundDespise,
                style: Theme.of(context).textTheme.headline1,
              ),
              MouseRegion(
                onEnter: (e) {
                  setState(() {
                    textColor = Colors.white;
                  });
                },
                onExit: (e) {
                  setState(() {
                    textColor = null;
                  });
                },
                child: ScaleAnimator(
                  scaleExtent: 1.01,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Navigator.defaultRouteName);
                    },
                    child: Text(
                      S.of(context).notFoundHome,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: textColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
