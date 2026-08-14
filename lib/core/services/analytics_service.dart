import 'package:flutter/widgets.dart' show NavigatorObserver;

abstract class AnalyticsService {
  /// Navigator observer for automatic screen-view tracking.
  NavigatorObserver get observer;

  Future<void> setUserId(String userId);

  Future<void> clearUser();

  Future<void> setUserProperties({
    required String activeRole,
    required bool isFamilyMember,
    required String preferredLanguage,
  });

  Future<void> logScreenView({required String screenName, String? screenClass});

  Future<void> logLogin({required String loginMethod});

  Future<void> logSignUp({required String signUpMethod});

  Future<void> logEvent(AnalyticsEvent event);
}

/// Event payload restricted to value types every analytics SDK accepts.
class AnalyticsEvent {
  const AnalyticsEvent(this.name, [this.parameters = const {}]);

  final String name;
  final Map<String, Object> parameters;
}
