import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/edit_profile_details/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/helpers/edit_profile_details_form_validation_helpers.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/common_helpers/gender_form_helpers.dart';
import '../../../resources/common_widgets.dart/radio_button.dart';
import '../../../resources/dimens.dart';

class EditProfileDetailsSection extends StatelessWidget {
  const EditProfileDetailsSection({super.key});
  static DateTime? dob;
  static GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController dobController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();

  static TextEditingController nationalIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dob = null;
    GenderFormHelpers.genderNotifier.value = 'Male';

    nameController.text = '';
    dobController.text = '';
    nationalIdController.text = '';
    phoneController.text = '';
    return Form(
      key: profileFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Dimens.constHeight,
          TextFormField(
            validator: (value) =>
                EditProfileDetailsFormValidationHelpers.nameValidator(
                  value: value,
                ),
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
                EditProfileDetailsFormValidationHelpers.dobValidator(
                  value: value,
                ),
            readOnly: true,
            onTap: () async {
              DateTime? selectedDate =
                  await EditProfileDetailScreenHelpers.getDob(
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
              ValueListenableBuilder<String>(
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
              ValueListenableBuilder<String>(
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
        ],
      ),
    );
  }
}
