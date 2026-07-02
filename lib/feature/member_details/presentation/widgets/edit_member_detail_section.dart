import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/member_form_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/radio_button.dart';

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
          decoration: InputDecoration(labelText: context.lang.dateOfBirth),
          style: AppTextStyles.textFormFieldStyle,
        ),
        const Gap(10),
        Text(context.lang.gender, style: AppTextStyles.bodyTextRoboto),
        const Gap(5),
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
                title: context.lang.male,
              ),
            ),
            const Gap(20),
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
                title: context.lang.female,
              ),
            ),
          ],
        ),
        const Gap(20),
        TextFormField(
          controller: nationalIdController,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(11),
          ],
          keyboardType: TextInputType.number,
          validator: (value) =>
              MemeberFormValidationHelpers.nationalIdValidator(
                context,
                value: value,
              ),
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(labelText: context.lang.nationalId),
          style: AppTextStyles.textFormFieldStyle,
          cursorColor: AppColors.textFormFieldStyleColor,
        ),
        const Gap(10),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: context.lang.emailAddressOptional,
          ),
          style: AppTextStyles.textFormFieldStyle,
          validator: (value) => MemeberFormValidationHelpers.emailValidator(
            context,
            value: value,
          ),
          cursorColor: AppColors.textFormFieldStyleColor,
        ),
        const Gap(20),
      ],
    );
  }
}
