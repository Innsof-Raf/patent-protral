import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_text_filed.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/radio_button.dart';

class MemberPersonalDetailsSection extends StatelessWidget {
  final DateTime? dob;
  final String gender;
  final String nationalId;
  final String? email;
  const MemberPersonalDetailsSection({
    super.key,
    required this.dob,
    required this.gender,
    required this.nationalId,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MemberTextFiled(
          title: 'Date of birth',
          value: dob != null ? DateFormat('dd-MM-yyyy').format(dob!) : '',
        ),
        const SizedBox(height: 13),
        const Text('Gender', style: AppTextStyles.bodyTextRoboto),
        const SizedBox(height: 5),
        Row(
          children: [
            RadioButton(
              value: 'Male',
              groupValue: gender,
              onChanged: () {},
              title: 'Male',
            ),
            const SizedBox(width: 20),
            RadioButton(
              value: 'Female',
              groupValue: gender,
              onChanged: () {},
              title: 'Female',
            ),
          ],
        ),
        const SizedBox(height: 19),
        MemberTextFiled(title: 'National ID', value: nationalId),
        const SizedBox(height: 8),
        MemberTextFiled(title: 'Email', value: email ?? ''),
      ],
    );
  }
}
