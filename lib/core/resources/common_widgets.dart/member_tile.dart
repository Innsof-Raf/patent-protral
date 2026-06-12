import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/core/route/app_router.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../dimens.dart';
import '../urls.dart';

class MemberTile extends StatelessWidget {
  final Member member;
  const MemberTile({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
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
          CircleAvatar(
            radius: 18,
            backgroundColor: member.profileImage == null
                ? AppColors.orange
                : null,
            backgroundImage: member.profileImage != null
                ? NetworkImage(
                    '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}',
                  )
                : null,
            child: member.profileImage == null
                ? Text(
                    member.name[0],
                    style: AppTextStyles.subHeaddingSemiBoldRoboto.copyWith(
                      fontSize: 18,
                      color: AppColors.white,
                    ),
                  )
                : null,
          ),
          Dimens.constWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                member.name,
                style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                  fontSize: 12,
                  color: AppColors.textLight,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                member.age,
                style: AppTextStyles.bodyTextInter.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
          const Spacer(),
          member.isInsurance && !member.isInsuranceExpired
              ? SvgPicture.asset('assets/icons/insurance_cart_icon.svg')
              : const SizedBox(),
        ],
      ),
    );
  }
}
