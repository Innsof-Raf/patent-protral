import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

import '../app_colors.dart';
import '../dimens.dart';
import '../urls.dart';

class MemberTile extends StatelessWidget {
  final Member member;
  const MemberTile({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: .5, color: AppColors.borderColor),
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      onPressed: () {
        context.router.push(MemberDetailsRoute(memberId: member.id));
      },
      child: Row(
        children: [
          _MemberAvatar(member: member),
          Dimens.constWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                member.name,
                style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                  fontSize: 12,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                member.age,
                style: AppTextStyles.largeRobotoNormal.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const Spacer(),
          member.isInsurance && !member.isInsuranceExpired
              ? SvgPicture.asset(Assets.icons.insuranceCartIcon.path)
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _MemberAvatar extends StatelessWidget {
  const _MemberAvatar({required this.member});

  final Member member;

  @override
  Widget build(BuildContext context) {
    final image = member.profileImage?.trim();
    final imageUrl = image == null || image.isEmpty
        ? null
        : '${ConstantUrls.memberImageUrl}/${member.id}/$image';

    return CircleAvatar(
      radius: 18,
      backgroundColor: AppColors.orange,
      child: ClipOval(
        child: SizedBox.expand(
          child: imageUrl == null
              ? _MemberAvatarFallback(member: member)
              : CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) =>
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
    if (_isFemale || _isMale) {
      return Icon(
        _isFemale ? Icons.female_rounded : Icons.male_rounded,
        color: AppColors.white,
        size: 20,
      );
    }

    return Center(
      child: Text(
        member.name.trim().isEmpty ? '?' : member.name.trim()[0].toUpperCase(),
        style: AppTextStyles.extraLargeRobotoBold.copyWith(
          fontSize: 18,
          color: AppColors.white,
        ),
      ),
    );
  }
}
