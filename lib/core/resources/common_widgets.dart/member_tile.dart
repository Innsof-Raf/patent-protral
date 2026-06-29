import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class MemberTile extends StatelessWidget {
  final Member member;
  const MemberTile({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          context.router.push(MemberDetailsRoute(memberId: member.id));
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _MemberAvatar(member: member),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      (member.name.trim().isEmpty
                              ? AppStaticTexts.unknown
                              : member.name)
                          .toTitleCase(),
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const Gap(2),
                    Text(
                      member.age,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (member.isInsurance && !member.isInsuranceExpired)
                Tooltip(
                  message: AppStaticTexts.insured,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withValues(
                        alpha: 0.5,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      Assets.icons.insuranceCartIcon.path,
                      width: 18,
                      height: 18,
                    ),
                  ),
                ),
              const Gap(8),
              Icon(
                Icons.chevron_right_rounded,
                color: theme.colorScheme.onSurfaceVariant.withValues(
                  alpha: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MemberAvatar extends StatelessWidget {
  const _MemberAvatar({required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final image = member.profileImage?.trim();
    final imageUrl = image == null || image.isEmpty
        ? null
        : '${ConstantUrls.memberImageUrl}/${member.id}/$image';

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.2),
          width: 2,
        ),
      ),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: AppColors.orange.withValues(alpha: 0.1),
        child: ClipOval(
          child: SizedBox.expand(
            child: imageUrl == null
                ? _MemberAvatarFallback(member: member)
                : CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: CommonNetworkImage.placeholder,
                    errorWidget: (context, url, error) =>
                        _MemberAvatarFallback(member: member),
                  ),
          ),
        ),
      ),
    );
  }
}

class _MemberAvatarFallback extends StatelessWidget {
  const _MemberAvatarFallback({required this.member});

  final Member member;

  bool get _isFemale => member.gender?.trim().toLowerCase() == 'female';
  bool get _isMale => member.gender?.trim().toLowerCase() == 'male';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (_isFemale || _isMale) {
      return Icon(
        _isFemale ? Icons.female_rounded : Icons.male_rounded,
        color: AppColors.orange,
        size: 28,
      );
    }

    return Center(
      child: Text(
        member.name.trim().isEmpty ? 'U' : member.name.trim()[0].toUpperCase(),
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.orange,
        ),
      ),
    );
  }
}
