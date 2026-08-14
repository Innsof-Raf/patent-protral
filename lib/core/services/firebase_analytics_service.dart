import 'dart:developer' as dev;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart' show NavigatorObserver;

import 'analytics_service.dart';

/// Firebase Analytics implementation of [AnalyticsService].
/// This should be the only file in the app that imports `firebase_analytics`.
class FirebaseAnalyticsService implements AnalyticsService {
  FirebaseAnalyticsService([FirebaseAnalytics? analytics])
    : _analytics = analytics ?? FirebaseAnalytics.instance {
    _enableCollection();
  }

  final FirebaseAnalytics _analytics;

  Future<void> _enableCollection() => _guard(
    () => _analytics.setAnalyticsCollectionEnabled(true),
    'enable collection',
  );

  @override
  late final NavigatorObserver observer = FirebaseAnalyticsObserver(
    analytics: _analytics,
  );

  @override
  Future<void> setUserId(String userId) =>
      _guard(() => _analytics.setUserId(id: userId), 'set user ID: $userId');

  @override
  Future<void> clearUser() =>
      _guard(() => _analytics.setUserId(id: null), 'clear user ID');

  @override
  Future<void> setUserProperties({
    required String activeRole,
    required bool isFamilyMember,
    required String preferredLanguage,
  }) => _guard(() async {
    await _analytics.setUserProperty(name: 'active_role', value: activeRole);
    await _analytics.setUserProperty(
      name: 'is_family_member',
      value: isFamilyMember.toString(),
    );
    await _analytics.setUserProperty(
      name: 'preferred_language',
      value: preferredLanguage,
    );
  }, 'set user properties');

  @override
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) => _guard(
    () => _analytics.logScreenView(
      screenName: screenName,
      screenClass: screenClass,
    ),
    'log screen view: $screenName',
  );

  @override
  Future<void> logLogin({required String loginMethod}) => _guard(
    () => _analytics.logLogin(loginMethod: loginMethod),
    'log login: $loginMethod',
  );

  @override
  Future<void> logSignUp({required String signUpMethod}) => _guard(
    () => _analytics.logSignUp(signUpMethod: signUpMethod),
    'log sign up: $signUpMethod',
  );

  @override
  Future<void> logEvent(AnalyticsEvent event) => _guard(() {
    assert(
      event.parameters.values.every(
        (v) => v is String || v is num || v is bool,
      ),
      'Analytics param values must be String, num, or bool (event: ${event.name})',
    );
    return _analytics.logEvent(
      name: event.name,
      parameters: event.parameters.isEmpty ? null : event.parameters,
    );
  }, 'log event: ${event.name}');

  Future<void> _guard(
    Future<void> Function() action,
    String description,
  ) async {
    try {
      await action();
    } catch (e, stackTrace) {
      dev.log(
        'Failed to $description',
        error: e,
        stackTrace: stackTrace,
        name: 'FirebaseAnalyticsService',
      );
    }
  }
}
