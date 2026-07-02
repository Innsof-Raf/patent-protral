part of 'language_bloc.dart';

@freezed
sealed class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.loadLanguage() = LoadLanguage;
  const factory LanguageEvent.changeLanguage(Locale locale) = ChangeLanguage;
}
