import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/book_appointment/helpers/book_appointment_screen_helpers.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/dimens.dart';
import '../../../resources/urls.dart';
import '../../profile/models/member/member_model.dart';

class MemberSelectionTile extends StatelessWidget {
  final MemberModel member;
  final bool isSelected;
  const MemberSelectionTile({
    Key? key,
    required this.member,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
            width: .5,
            color: isSelected ? AppColors.vilot : AppColors.borderColor),
        foregroundColor: isSelected ? AppColors.white : AppColors.vilot,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      onPressed: () {
        if (BookAppointmentScreenHelpers.selectedMemberNotifier.value ==
            member) {
          BookAppointmentScreenHelpers.selectedMemberNotifier.value = null;
        } else {
          BookAppointmentScreenHelpers.selectedMemberNotifier.value = member;
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
                    '${ConstantUrls.memberImageUrl}/${member.id}//${member.profileImage}')
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
                style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                    fontSize: 12,
                    color: isSelected ? AppColors.vilot : AppColors.textLight),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(member.age,
                  style: AppTextStyles.bodyTextInter.copyWith(
                      color:
                          isSelected ? AppColors.vilot : AppColors.textLight)),
            ],
          ),
          const Spacer(),
          member.isInsurance && !member.isInsuranceExpired
              ? SvgPicture.asset(
                  isSelected
                      ? 'assets/icons/insurance_icon_vilot.svg'
                      : 'assets/icons/insurance_cart_icon.svg',
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
