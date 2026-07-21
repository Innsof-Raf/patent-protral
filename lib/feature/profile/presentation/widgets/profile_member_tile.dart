import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class ProfileMemberTile extends StatelessWidget {
  const ProfileMemberTile({super.key, required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .15),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          context.router.root.push(MemberDetailsRoute(memberId: member.id));
        },
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              _MemberAvatar(member: member),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      (member.name.trim().isEmpty
                              ? context.lang.unknown
                              : member.name)
                          .capitalize()
                          .toTitleCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      _subtitle(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              if (member.isInsurance && !member.isInsuranceExpired) ...[
                const Gap(8),
                const _InsuranceBadge(),
              ],
              const Gap(8),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: theme.colorScheme.primary.withValues(alpha: 0.5),
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _subtitle(BuildContext context) {
    final details = [
      if (member.age.isNotEmpty) '${context.lang.age} ${member.age}',
      if (member.nationalId.isNotEmpty)
        '${context.lang.nationalId} ${member.nationalId}',
    ];

    return details.isEmpty ? context.lang.memberProfile : details.join('  •  ');
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

    return CircleAvatar(
      radius: 22,
      backgroundColor: theme.colorScheme.primaryContainer,
      child: ClipOval(
        child: SizedBox.expand(
          child: imageUrl == null
              ? _MemberAvatarFallback(member: member)
              : Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      _MemberAvatarFallback(member: member),
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
      return Center(
        child: Icon(
          _isFemale ? Icons.female_rounded : Icons.male_rounded,
          color: theme.colorScheme.onPrimaryContainer,
          size: 24,
        ),
      );
    }

    return Center(
      child: Text(
        member.name.trim().isEmpty ? 'U' : member.name.trim()[0].toUpperCase(),
        style: theme.textTheme.titleMedium?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class _InsuranceBadge extends StatelessWidget {
  const _InsuranceBadge();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: .3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        context.lang.insured,
        style: theme.textTheme.labelSmall?.copyWith(
          color: AppColors.primaryCyan,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
