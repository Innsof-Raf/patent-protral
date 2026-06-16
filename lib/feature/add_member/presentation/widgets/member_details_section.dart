import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/member_form_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/radio_button.dart';

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
    final theme = Theme.of(context);

    return Form(
      key: memberFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            validator: (value) =>
                MemeberFormValidationHelpers.nameValidator(value: value),
            controller: nameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              labelText: 'Full Name',
              prefixIcon: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            validator: (value) =>
                MemeberFormValidationHelpers.dobValidator(value: value),
            readOnly: true,
            onTap: () async {
              final DateTime? selectedDate =
                  await AddMemberScreenHelpers.getDob(
                    initialDate: dob ?? DateTime(2000),
                    context: context,
                  );
              if (selectedDate != null) {
                dob = selectedDate;
                dobController.text = DateFormat('dd-MM-yyyy').format(dob!);
              }
            },
            controller: dobController,
            decoration: const InputDecoration(
              labelText: 'Date of Birth',
              prefixIcon: Icon(Icons.calendar_month_outlined),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Gender',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildGenderRadio('Male'),
              const SizedBox(width: 24),
              _buildGenderRadio('Female'),
            ],
          ),
          const SizedBox(height: 24),
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
            decoration: const InputDecoration(
              labelText: 'National ID',
              prefixIcon: Icon(Icons.badge_outlined),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) =>
                MemeberFormValidationHelpers.emailValidator(value: value),
            decoration: const InputDecoration(
              labelText: 'Email Address (Optional)',
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderRadio(String value) {
    return ValueListenableBuilder<String>(
      valueListenable: GenderFormHelpers.genderNotifier,
      builder: (context, currentGender, child) {
        final isSelected = currentGender == value;
        final colorScheme = Theme.of(context).colorScheme;

        return InkWell(
          onTap: () => GenderFormHelpers.genderNotifier.value = value,
          borderRadius: BorderRadius.circular(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioButton(
                groupValue: currentGender,
                onChanged: () => GenderFormHelpers.genderNotifier.value = value,
                value: value,
                title: '', // We use our own label for better spacing
              ),
              Text(
                value,
                style: TextStyle(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
