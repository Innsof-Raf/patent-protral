import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
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
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .28),
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          context.router.root.push(MemberDetailsRoute(memberId: member.id));
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _MemberAvatar(member: member),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      member.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.bodyTextRoboto.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              if (member.isInsurance && !member.isInsuranceExpired) ...[
                const SizedBox(width: 8),
                const _InsuranceBadge(),
              ],
              const SizedBox(width: 8),
              Icon(
                Icons.chevron_right_rounded,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String get _subtitle {
    final details = [
      if (member.age.isNotEmpty) 'Age ${member.age}',
      if (member.nationalId.isNotEmpty) 'ID ${member.nationalId}',
    ];

    return details.isEmpty ? 'Member profile' : details.join('  |  ');
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
        member.name.trim().isEmpty ? '?' : member.name.trim()[0].toUpperCase(),
        style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: .42),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        'Insured',
        style: AppTextStyles.bodyTextRoboto.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
