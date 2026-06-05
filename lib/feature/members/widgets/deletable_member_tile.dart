import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/dimens.dart';
import '../../../resources/urls.dart';
import '../../../route/route_constants.dart';
import '../../profile/models/member/member_model.dart';

class DeletableMemberTile extends StatelessWidget {
  final MemberModel member;

  const DeletableMemberTile({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onLongPress: () {
        context
            .read<UserBloc>()
            .add(ChangeMemberSelectionStatus(selectedMemberid: member.id));
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: .5, color: AppColors.borderColor),
        backgroundColor:
            member.isSelected ? AppColors.selectionColor : AppColors.white,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      onPressed: () {
        if (member.isSelected ||
            context
                .read<UserBloc>()
                .state
                .user!
                .members
                .any((member) => member.isSelected)) {
          context
              .read<UserBloc>()
              .add(ChangeMemberSelectionStatus(selectedMemberid: member.id));
        } else {
          Navigator.of(context).pushNamed(RouteConstants.memberDetailsScreen,
              arguments: {'member_id': member.id});
        }
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor:
                member.profileImage == null ? AppColors.orange : null,
            backgroundImage: member.profileImage != null
                ? NetworkImage(
                    '${ConstantUrls.memberImageUrl}/${member.id}/${member.profileImage}')
                : null,
            child: member.profileImage == null
                ? Text(
                    member.name[0],
                    style: AppTextStyles.subHeaddingSemiBoldRoboto
                        .copyWith(fontSize: 18, color: AppColors.white),
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
                style: AppTextStyles.bodyLargeRobotoSemiBold
                    .copyWith(fontSize: 12, color: AppColors.textLight),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(member.age,
                  style: AppTextStyles.bodyTextInter
                      .copyWith(color: AppColors.textLight)),
            ],
          ),
          const Spacer(),
          member.isInsurance && !member.isInsuranceExpired
              ? SvgPicture.asset(
                  'assets/icons/insurance_cart_icon.svg',
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
