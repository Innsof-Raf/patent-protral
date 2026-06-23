import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class MemberSelectionTile extends StatelessWidget {
  final Member member;
  final bool isSelected;
  const MemberSelectionTile({
    super.key,
    required this.member,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: () {
        if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
            member) {
          BookAppointmentScreenHelpers.selectedMemberNotifier.value = null;
        } else {
          BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
        }
      },
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primaryContainer.withValues(alpha: 0.3)
              : colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? colorScheme.primary
                : colorScheme.outlineVariant,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: member.profileImage == null
                    ? colorScheme.secondaryContainer
                    : null,
                shape: BoxShape.circle,
                image: member.profileImage != null
                    ? DecorationImage(
                        image: CachedNetworkImageProvider(
                          '${ConstantUrls.memberImageUrl}/${member.id}//${member.profileImage}',
                        ),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: member.profileImage == null
                  ? Center(
                      child: Text(
                        member.name.isNotEmpty
                            ? member.name[0].toUpperCase()
                            : '?',
                        style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                          color: colorScheme.onSecondaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : null,
            ),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    member.name,
                    style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    '${AppStaticTexts.age}: ${member.age}',
                    style: AppTextStyles.bodyTextRoboto.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (member.isInsurance && !member.isInsuranceExpired)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(
                  Assets.icons.insuranceCartIcon.path,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            const Gap(8),
            RadioGroup<Member?>(
              groupValue: isSelected ? member : null,
              onChanged: (value) =>
                  BookAppointmentScreenHelpers.selectedMemberNotifier.value =
                      value,
              child: Radio<Member?>(
                value: member,
                activeColor: colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
