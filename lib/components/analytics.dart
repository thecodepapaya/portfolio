import 'package:firebase_analytics/firebase_analytics.dart';

enum LogType {
  cardClick,
  contactClick,
  cardGitHubClick,
  cardExternalLinkClick,
  footerCreditClick,
  tabClick,
  home404Click,
}

class PortfolioAnalytics {
  static late FirebaseAnalytics _analytics = FirebaseAnalytics();

  static Future<void> log(LogType logType, {String? property}) async {
    await _analytics.logEvent(
      name: logType.toString(),
      parameters: <String, dynamic>{
        'property': property,
      },
    );
  }
}
