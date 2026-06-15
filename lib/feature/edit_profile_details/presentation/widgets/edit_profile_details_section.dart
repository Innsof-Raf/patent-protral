import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/common_helpers/gender_form_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_details_form_validation_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_section_card.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_text_field.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';

class EditProfileDetailsSection extends StatelessWidget {
  const EditProfileDetailsSection({super.key});

  static DateTime? dob;
  static GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController dobController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController nationalIdController = TextEditingController();

  static void resetFormValues() {
    dob = null;
    GenderFormHelpers.genderNotifier.value = 'Male';
    nameController.text = '';
    dobController.text = '';
    nationalIdController.text = '';
    phoneController.text = '';
  }

  static void initializeFromUser(User? user) {
    resetFormValues();
    if (user == null) return;

    final member = _primaryMember(user);
    nameController.text = member?.name ?? _fullName(user);
    nationalIdController.text = member?.nationalId ?? '';
    dob = member?.dob;
    dobController.text = dob == null
        ? ''
        : DateFormat('dd-MM-yyyy').format(dob!);
    phoneController.text = member?.mobileNo ?? user.mobileNumber;
    final gender = member?.gender;
    if (gender == 'Male' || gender == 'Female') {
      GenderFormHelpers.genderNotifier.value = gender!;
    }
  }

  static Member? _primaryMember(User user) {
    if (user.members.isEmpty) return null;

    for (final member in user.members) {
      if (member.id == user.idMember) return member;
    }

    return user.members.first;
  }

  static String _fullName(User user) {
    final name = '${user.firstName} ${user.lastName}'.trim();
    return name.isNotEmpty ? name : user.userName;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return EditProfileSectionCard(
      child: Form(
        key: profileFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Personal details',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Keep your profile information accurate for smoother visits.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            EditProfileTextField(
              validator: (value) =>
                  EditProfileDetailsFormValidationHelpers.nameValidator(
                    value: value,
                  ),
              controller: nameController,
              autofocus: true,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              label: 'Name',
              icon: Icons.person_outline_rounded,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
                LengthLimitingTextInputFormatter(20),
              ],
            ),
            const SizedBox(height: 12),
            EditProfileTextField(
              validator: (value) =>
                  EditProfileDetailsFormValidationHelpers.dobValidator(
                    value: value,
                  ),
              readOnly: true,
              onTap: () async {
                final selectedDate =
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
              label: 'Date of birth',
              icon: Icons.calendar_today_outlined,
            ),
            const SizedBox(height: 12),
            EditProfileTextField(
              validator: (value) =>
                  EditProfileDetailsFormValidationHelpers.nationalIdValidator(
                    value: value,
                  ),
              controller: nationalIdController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              label: 'National ID',
              icon: Icons.badge_outlined,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Gender',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            const _GenderSelector(),
          ],
        ),
      ),
    );
  }
}

class _GenderSelector extends StatelessWidget {
  const _GenderSelector();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: GenderFormHelpers.genderNotifier,
      builder: (context, value, child) {
        return SegmentedButton<String>(
          showSelectedIcon: false,
          segments: const [
            ButtonSegment(
              value: 'Male',
              label: Text('Male'),
              icon: Icon(Icons.male_rounded),
            ),
            ButtonSegment(
              value: 'Female',
              label: Text('Female'),
              icon: Icon(Icons.female_rounded),
            ),
          ],
          selected: {value},
          onSelectionChanged: (selection) {
            GenderFormHelpers.genderNotifier.value = selection.first;
          },
        );
      },
    );
  }
}
