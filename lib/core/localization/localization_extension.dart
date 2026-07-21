import 'package:flutter/widgets.dart';
import 'package:patient_portal/core/gen/l10n/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get lang => AppLocalizations.of(this)!;
  String get currentLang => Localizations.localeOf(this).languageCode;
}
