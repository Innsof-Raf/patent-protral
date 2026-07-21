import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'generated/language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final SharedPreferences sharedPreferences;

  LanguageBloc({required this.sharedPreferences})
    : super(LanguageState.initial()) {
    on<LoadLanguage>(_onLoadLanguage);
    on<ChangeLanguage>(_onChangeLanguage);
  }

  static const String _languageKey = 'selected_language';

  void _onLoadLanguage(LoadLanguage event, Emitter<LanguageState> emit) {
    final languageCode = sharedPreferences.getString(_languageKey);
    if (languageCode != null) {
      emit(state.copyWith(locale: Locale(languageCode)));
    } else {
      emit(state.copyWith(locale: const Locale('en')));
    }
  }

  Future<void> _onChangeLanguage(
    ChangeLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    await sharedPreferences.setString(_languageKey, event.locale.languageCode);
    emit(state.copyWith(locale: event.locale));
  }
}
