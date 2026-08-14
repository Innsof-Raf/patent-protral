import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_section_card.dart';

class MemberVitalsSection extends StatelessWidget {
  const MemberVitalsSection({
    super.key,
    this.heartRate,
    this.bloodPressure,
    this.temperature,
    this.oxygenLevel,
  });

  final String? heartRate;
  final String? bloodPressure;
  final String? temperature;
  final String? oxygenLevel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MemberDetailsSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.lang.vitals,
            style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Gap(14),
          Row(
            children: [
              Expanded(
                child: _VitalCard(
                  icon: Icons.favorite_outline,
                  title: context.lang.heartRate,
                  value: heartRate ?? '72',
                  unit: context.lang.bpm,
                ),
              ),
              const Gap(10),
              Expanded(
                child: _VitalCard(
                  icon: Icons.speed_outlined,
                  title: context.lang.bloodPressure,
                  value: bloodPressure ?? '120/80',
                  unit: context.lang.mmHg,
                ),
              ),
            ],
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: _VitalCard(
                  icon: Icons.thermostat_outlined,
                  title: context.lang.temperature,
                  value: temperature ?? '98.6',
                  unit: '°F',
                ),
              ),
              const Gap(10),
              Expanded(
                child: _VitalCard(
                  icon: Icons.water_drop_outlined,
                  title: context.lang.oxygenLevel,
                  value: oxygenLevel ?? '98',
                  unit: '%',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _VitalCard extends StatelessWidget {
  const _VitalCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
  });

  final IconData icon;
  final String title;
  final String value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .32),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(icon, color: theme.colorScheme.primary, size: 18),
              const Gap(6),
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodySemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          const Gap(8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              if (unit.isNotEmpty) ...[
                const Gap(4),
                Text(
                  unit,
                  style: AppTextStyles.bodySemiBoldRoboto.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
