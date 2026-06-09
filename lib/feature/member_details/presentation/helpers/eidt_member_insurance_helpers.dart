import 'package:flutter/material.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_models/insurance/insurance_model.dart';

class EditMemberInuranceHelpers {
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

  static ValueNotifier<int?> selectedInsuranceNotifer = ValueNotifier(null);
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
            style: TextButton.styleFrom(foregroundColor: AppColors.vilot),
          ),
        ),
        child: child!,
      ),
    );
    return selectedDate;
  }
}
