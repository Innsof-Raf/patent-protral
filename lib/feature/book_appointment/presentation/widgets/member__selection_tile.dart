import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/dimens.dart';
import 'package:patient_portal/resources/urls.dart';

class MemberSelectionTile extends StatelessWidget {
  final Member member;
  final bool isSelected;
  const MemberSelectionTile({
    super.key,
    required this.member,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: .5,
          color: isSelected ? AppColors.vilot : AppColors.borderColor,
        ),
        foregroundColor: isSelected ? AppColors.white : AppColors.vilot,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
            backgroundColor: member.profileImage == null
                ? AppColors.orange
                : null,
            backgroundImage: member.profileImage != null
                ? NetworkImage(
                    '${ConstantUrls.memberImageUrl}/${member.id}//${member.profileImage}',
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
                  color: isSelected ? AppColors.vilot : AppColors.textLight,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                member.age,
                style: AppTextStyles.bodyTextInter.copyWith(
                  color: isSelected ? AppColors.vilot : AppColors.textLight,
                ),
              ),
            ],
          ),
          const Spacer(),
          member.isInsurance && !member.isInsuranceExpired
              ? SvgPicture.asset(
                  isSelected
                      ? 'assets/icons/insurance_icon_vilot.svg'
                      : 'assets/icons/insurance_cart_icon.svg',
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
