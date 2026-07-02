import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class MemberSelectionTile extends StatelessWidget {
  final Member member;
  final bool isSelected;
  final VoidCallback? onTap;

  const MemberSelectionTile({
    super.key,
    required this.member,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap:
          onTap ??
          () {
            if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
                member) {
              BookAppointmentScreenHelpers.selectedMemberNotifier.value = null;
            } else {
              BookAppointmentScreenHelpers.selectedMemberNotifier.value =
                  member;
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
            ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                placeholder: CommonNetworkImage.placeholder,
                errorWidget: (context, url, error) => Container(
                  width: 48,
                  height: 48,
                  color: colorScheme.primary,
                  child: Center(
                    child: Text(
                      member.name.trim().isNotEmpty
                          ? member.name.trim()[0].toUpperCase()
                          : context.lang.unknownInitial,
                      style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (member.name.trim().isEmpty
                            ? context.lang.unknown
                            : member.name)
                        .toTitleCase(),
                    style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    '${context.lang.age}: ${member.age.localize(context.currentLang)}',
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
              onChanged: (value) {
                if (onTap != null) {
                  onTap!();
                } else {
                  BookAppointmentScreenHelpers.selectedMemberNotifier.value =
                      value;
                }
              },
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
