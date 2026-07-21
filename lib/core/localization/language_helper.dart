import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/bloc/language_bloc.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';

class LanguageHelper {
  static void showLanguageSelection(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          bloc: context.read<LanguageBloc>(),
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.lang.changeLanguage,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(24),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: Text(context.lang.english),
                    trailing: state.locale.languageCode == 'en'
                        ? Icon(
                            Icons.check_circle,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    onTap: () {
                      context.read<LanguageBloc>().add(
                        const ChangeLanguage(Locale('en')),
                      );
                      Navigator.pop(bottomSheetContext);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: Text(context.lang.arabic),
                    trailing: state.locale.languageCode == 'ar'
                        ? Icon(
                            Icons.check_circle,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    onTap: () {
                      context.read<LanguageBloc>().add(
                        const ChangeLanguage(Locale('ar')),
                      );
                      Navigator.pop(bottomSheetContext);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
