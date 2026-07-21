import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_section_card.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_text_field.dart';

class MemberPersonalDetailsSection extends StatelessWidget {
  const MemberPersonalDetailsSection({
    super.key,
    required this.dob,
    required this.gender,
    required this.nationalId,
    required this.email,
  });

  final DateTime? dob;
  final String gender;
  final String nationalId;
  final String? email;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MemberDetailsSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.lang.personalDetails,
            style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Gap(14),
          MemberTextField(
            title: context.lang.dobLabel,
            value: dob != null
                ? DateFormat(
                    'dd-MM-yyyy',
                    context.currentLang,
                  ).format(dob!).localize(context.currentLang)
                : '',
            icon: Icons.calendar_today_outlined,
          ),
          const Gap(10),
          MemberTextField(
            title: context.lang.genderLabel,
            value: gender == 'Male'
                ? context.lang.male
                : (gender == 'Female' ? context.lang.female : gender),
            icon: Icons.wc_rounded,
          ),
          const Gap(10),
          MemberTextField(
            title: context.lang.nationalId,
            value: nationalId,
            icon: Icons.badge_outlined,
          ),
          const Gap(10),
          MemberTextField(
            title: context.lang.emailLabel,
            value: email ?? '',
            icon: Icons.mail_outline_rounded,
          ),
        ],
      ),
    );
  }
}
