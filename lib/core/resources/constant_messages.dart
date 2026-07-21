import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class ConstantMessages {
  static const String serverFailureMessage = 'serverFailure';
  static const String connectionTimeOutFailureMessage = 'connectionTimeout';
  static const String noNetworkErrorMessage = 'noNetwork';
  static const String tokenExpiredMessage = 'tokenExpired';
  static const String authenticationFailureMesssage = 'authFailure';

  static String translate(BuildContext context, String message) {
    switch (message) {
      case serverFailureMessage:
        return context.lang.serverFailure;
      case connectionTimeOutFailureMessage:
        return context.lang.connectionTimeout;
      case noNetworkErrorMessage:
        return context.lang.noNetwork;
      case tokenExpiredMessage:
        return context.lang.tokenExpired;
      case authenticationFailureMesssage:
        return context.lang.authFailure;
      default:
        return message;
    }
  }
}
