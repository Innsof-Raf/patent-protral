import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../common_models/insurance/insurance_model.dart';
import '../dimens.dart';

class InsuranceHelpers {
  static void showInsuranceFetchingFailedSnackBar({
    required BuildContext context,
    required String content,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.black,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(
          bottom: Dimens.constPadding,
          left: Dimens.constPadding,
          right: Dimens.constPadding,
        ),
        content: Text(
          content,
          style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  static ValueNotifier<int?> selectedInsuranceNotifier = ValueNotifier(null);

  static DropdownMenuItem<int> createDropDownItem({
    required InsuranceModel insurance,
  }) {
    return DropdownMenuItem<int>(
      value: insurance.idInsurance,
      child: Text(
        insurance.insuranceName,
        style: AppTextStyles.textFormFieldStyle,
        overflow: TextOverflow.fade,
      ),
    );
  }

  static ValueNotifier<bool> insuranceCheckBoxNotifier = ValueNotifier<bool>(
    false,
  );

  static Future<DateTime?> getExpireDate({
    required DateTime initialDate,
    required BuildContext context,
  }) async {
    DateTime? selectedDate;
    selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().add(const Duration(days: 1)),
      lastDate: DateTime(2050),
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
