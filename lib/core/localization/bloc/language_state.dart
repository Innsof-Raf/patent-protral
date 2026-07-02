part of 'language_bloc.dart';

@freezed
sealed class LanguageState with _$LanguageState {
  const factory LanguageState({required Locale locale}) = _LanguageState;

  factory LanguageState.initial() => const LanguageState(locale: Locale('en'));
}
