import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_section_card.dart';

class MemberProfileImageSection extends StatelessWidget {
  const MemberProfileImageSection({
    super.key,
    required this.title,
    required this.image,
    required this.memberId,
    this.subtitle,
  });

  final int memberId;
  final String title;
  final String? image;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MemberDetailsSectionCard(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          _MemberAvatar(memberId: memberId, image: image, title: title),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
                if (subtitle != null && subtitle!.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Text(
                    subtitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MemberAvatar extends StatelessWidget {
  const _MemberAvatar({
    required this.memberId,
    required this.image,
    required this.title,
  });

  final int memberId;
  final String? image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initial = title.trim().isEmpty ? '?' : title.trim()[0].toUpperCase();

    return Container(
      width: 78,
      height: 78,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.primaryContainer.withValues(alpha: .48),
      ),
      child: CircleAvatar(
        backgroundColor: theme.colorScheme.primaryContainer,
        backgroundImage: image == null || image!.isEmpty
            ? null
            : CachedNetworkImageProvider(
                '${ConstantUrls.memberImageUrl}/$memberId/$image',
              ),
        child: image == null || image!.isEmpty
            ? Text(
                initial,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w900,
                ),
              )
            : null,
      ),
    );
  }
}
