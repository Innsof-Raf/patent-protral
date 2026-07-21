import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';

class ReportsAppbarHelpers {
  static List<PopupMenuItem<int>> createPopupMenuItem(
    BuildContext context,
    List<Member> members,
  ) {
    final List<PopupMenuItem<int>> popupMenuItems = [
      PopupMenuItem(
        value: 0,
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          context.lang.all,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyLargeRobotoSemiBold,
        ),
      ),
    ];
    for (Member member in members) {
      popupMenuItems.add(
        PopupMenuItem(
          value: member.id,
          height: 30,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            member.name,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyLargeRobotoSemiBold,
          ),
        ),
      );
    }
    return popupMenuItems;
  }
}
