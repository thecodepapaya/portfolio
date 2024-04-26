import 'package:flutter/material.dart';
import 'package:portfolio/components/analytics.dart';
import 'package:portfolio/components/scale_animator.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NotFound404 extends StatefulWidget {
  const NotFound404({Key? key}) : super(key: key);

  @override
  _NotFound404State createState() => _NotFound404State();
}

class _NotFound404State extends State<NotFound404> {
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    var textStyle = getValueForScreenType<TextStyle>(
      context: context,
      mobile: Theme.of(context).textTheme.headlineMedium!,
      tablet: Theme.of(context).textTheme.displayMedium,
      desktop: Theme.of(context).textTheme.displayLarge,
    );

    var padding = getValueForScreenType<EdgeInsets>(
      context: context,
      mobile: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
      tablet: EdgeInsets.symmetric(vertical: 100, horizontal: 150),
      desktop: EdgeInsets.symmetric(vertical: 100, horizontal: 250),
    );

    return Scaffold(
      body: Padding(
        padding: padding,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).notFoundInterjection +
                    "\n\n" +
                    S.of(context).notFoundDespise,
                style: textStyle,
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
                      PortfolioAnalytics.log(LogType.home404Click);
                    },
                    child: Text(
                      S.of(context).notFoundHome,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
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
