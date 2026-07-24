import 'dart:developer' as dev;
import 'package:firebase_analytics/firebase_analytics.dart';

/// A reusable, non-blocking Analytics service wrapping [FirebaseAnalytics].
class AnalyticsService {
  final FirebaseAnalytics _analytics;

  AnalyticsService({FirebaseAnalytics? analytics})
    : _analytics = analytics ?? FirebaseAnalytics.instance;

  /// Observer for automatic screen tracking with Navigator / AutoRoute.
  FirebaseAnalyticsObserver get observer =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  /// Logs a custom event asynchronously and safely.
  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    try {
      await _analytics.logEvent(name: name, parameters: parameters);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to log analytics event: $name',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }

  /// Logs a screen view manually if automatic tracking is insufficient.
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    try {
      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenClass,
      );
    } catch (e, stackTrace) {
      dev.log(
        'Failed to log screen view: $screenName',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }

  /// Sets the user identifier for cross-session tracking.
  Future<void> setUserId(String? userId) async {
    try {
      await _analytics.setUserId(id: userId);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to set user ID: $userId',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }

  /// Sets a user property.
  Future<void> setUserProperty({
    required String name,
    required String? value,
  }) async {
    try {
      await _analytics.setUserProperty(name: name, value: value);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to set user property: $name=$value',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }

  /// Logs a login event.
  Future<void> logLogin({String? loginMethod}) async {
    try {
      await _analytics.logLogin(loginMethod: loginMethod ?? 'password');
    } catch (e, stackTrace) {
      dev.log(
        'Failed to log login event',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }

  /// Reset analytics data (e.g. on logout).
  Future<void> resetAnalyticsData() async {
    try {
      await _analytics.setUserId(id: null);
    } catch (e, stackTrace) {
      dev.log(
        'Failed to reset analytics data',
        error: e,
        stackTrace: stackTrace,
        name: 'AnalyticsService',
      );
    }
  }
}
