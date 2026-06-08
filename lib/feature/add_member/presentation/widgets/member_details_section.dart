import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/resources/common_helpers/member_form_validation_helpers.dart';
import 'package:patient_portal/resources/common_widgets.dart/radio_button.dart';
import 'package:patient_portal/resources/dimens.dart';

import 'add_member_screen_helpers.dart';

class MemberDetailsSection extends StatelessWidget {
  const MemberDetailsSection({super.key});

  static DateTime? dob;
  static GlobalKey<FormState> memberFormKey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController dobController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController nationalIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dobController.text = '';
    dob = null;
    nameController.text = '';
    nationalIdController.text = '';
    GenderFormHelpers.genderNotifier.value = 'Male';
    emailController.text = '';

    return Form(
      key: memberFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Dimens.constHeight,
          TextFormField(
            validator: (value) =>
                MemeberFormValidationHelpers.nameValidator(value: value),
            controller: nameController,
            autofocus: true,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.sentences,
            decoration: const InputDecoration(labelText: 'Name'),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
              LengthLimitingTextInputFormatter(20),
            ],
            style: AppTextStyles.textFormFieldStyle,
            cursorColor: AppColors.textFormFiledStyleColor,
          ),
          const SizedBox(height: 10),
          TextFormField(
            validator: (value) =>
                MemeberFormValidationHelpers.dobValidator(value: value),
            readOnly: true,
            onTap: () async {
              DateTime? selectedDate = await AddMemberScreenHelpers.getDob(
                initialDate: dob ?? DateTime.now(),
                context: context,
              );
              if (selectedDate != null) {
                dob = selectedDate;
                dobController.text = DateFormat('dd-MM-yyyy').format(dob!);
              }
            },
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
          const SizedBox(height: 15),
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
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
