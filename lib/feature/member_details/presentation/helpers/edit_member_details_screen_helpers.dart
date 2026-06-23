import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class EditMemberDetailsScreenHelpers {
  static Future<DateTime?> getDob({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    DateTime? selectedDate;
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: AppColors.violet),
          ),
        ),
        child: child!,
      ),
    );
    return selectedDate;
  }
}
