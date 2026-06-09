import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/resources/common_helpers/member_form_validation_helpers.dart';
import 'package:patient_portal/resources/common_widgets.dart/radio_button.dart';

class EditmemberDetailSection extends StatelessWidget {
  static DateTime dob = DateTime.now();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController nationalIdController = TextEditingController();
  static TextEditingController dobController = TextEditingController();

  const EditmemberDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          readOnly: true,
          controller: dobController,
          decoration: const InputDecoration(labelText: 'Date of birth'),
          style: AppTextStyles.textFormFieldStyle,
        ),
        const SizedBox(height: 10),
        const Text('Gender', style: AppTextStyles.bodyTextRoboto),
        const SizedBox(height: 5),
        Row(
          children: [
            ValueListenableBuilder(
              valueListenable: GenderFormHelpers.genderNotifier,
              builder: (context, value, child) => RadioButton(
                groupValue: value,
                onChanged: () {
                  if (value != 'Male') {
                    GenderFormHelpers.genderNotifier.value = 'Male';
                  }
                },
                value: 'Male',
                title: 'Male',
              ),
            ),
            const SizedBox(width: 20),
            ValueListenableBuilder(
              valueListenable: GenderFormHelpers.genderNotifier,
              builder: (context, value, child) => RadioButton(
                groupValue: value,
                onChanged: () {
                  if (value != 'Female') {
                    GenderFormHelpers.genderNotifier.value = 'Female';
                  }
                },
                value: 'Female',
                title: 'Female',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: nationalIdController,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(11),
          ],
          keyboardType: TextInputType.number,
          validator: (value) =>
              MemeberFormValidationHelpers.nationalIdValidator(value: value),
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(labelText: 'National ID'),
          style: AppTextStyles.textFormFieldStyle,
          cursorColor: AppColors.textFormFiledStyleColor,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(labelText: 'Email (Optional)'),
          style: AppTextStyles.textFormFieldStyle,
          validator: (value) =>
              MemeberFormValidationHelpers.emailValidator(value: value),
          cursorColor: AppColors.textFormFiledStyleColor,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
