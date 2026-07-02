import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
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
          const Gap(14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  (title.trim().isEmpty ? context.lang.unknown : title)
                      .toTitleCase(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.extraLargeRobotoBold.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
                if (subtitle != null && subtitle!.isNotEmpty) ...[
                  const Gap(6),
                  Text(
                    subtitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bodyTextRoboto.copyWith(
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
    final initial = title.trim().isEmpty
        ? context.lang.unknownInitial
        : title.trim()[0].toUpperCase();
    final imageUrl = image == null || image!.trim().isEmpty
        ? null
        : '${ConstantUrls.memberImageUrl}/$memberId/${image!.trim()}';

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
        child: ClipOval(
          child: SizedBox.expand(
            child: imageUrl == null
                ? _MemberAvatarFallback(
                    initial: initial,
                    color: theme.colorScheme.onPrimaryContainer,
                  )
                : CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      Assets.images.memberDefaultProfileImage.path,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class _MemberAvatarFallback extends StatelessWidget {
  const _MemberAvatarFallback({required this.initial, required this.color});

  final String initial;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        initial,
        style: AppTextStyles.extraLargeRobotoBold.copyWith(
          color: color,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
