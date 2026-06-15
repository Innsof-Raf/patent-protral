import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_section_card.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_text_filed.dart';

class MemberInsuranceSection extends StatelessWidget {
  const MemberInsuranceSection({
    super.key,
    required this.hasInsurance,
    required this.insuranceName,
    required this.memberNo,
    this.expireDate,
  });

  final bool hasInsurance;
  final String insuranceName;
  final String memberNo;
  final DateTime? expireDate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MemberDetailsSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Insurance',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              _InsuranceStatusBadge(isActive: hasInsurance),
            ],
          ),
          const SizedBox(height: 14),
          if (!hasInsurance)
            Text(
              'No active insurance details are linked to this member.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            )
          else ...[
            MemberTextFiled(
              title: 'Insurance',
              value: insuranceName,
              icon: Icons.health_and_safety_outlined,
            ),
            const SizedBox(height: 10),
            MemberTextFiled(
              title: 'Member ID',
              value: memberNo,
              icon: Icons.confirmation_number_outlined,
            ),
            const SizedBox(height: 10),
            MemberTextFiled(
              title: 'Expire date',
              value: expireDate != null
                  ? DateFormat('dd-MM-yyyy').format(expireDate!)
                  : '',
              icon: Icons.event_available_outlined,
            ),
          ],
        ],
      ),
    );
  }
}

class _InsuranceStatusBadge extends StatelessWidget {
  const _InsuranceStatusBadge({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = isActive
        ? theme.colorScheme.primary
        : theme.colorScheme.outline;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        isActive ? 'Active' : 'Not linked',
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
