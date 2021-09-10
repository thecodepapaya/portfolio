import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class PortfolioAnalytics {
  static late FirebaseAnalytics analytics;
  static late FirebaseAnalyticsObserver observer;
  static initialize() {
    analytics = FirebaseAnalytics();
    observer = FirebaseAnalyticsObserver(analytics: analytics);
  }
}
