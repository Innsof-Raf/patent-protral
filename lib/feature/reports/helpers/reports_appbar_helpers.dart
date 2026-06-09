import 'package:flutter/material.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';

import '../../../resources/app_text_styles.dart';

class ReportsAppbarHelpers {
  static List<PopupMenuItem<int>> createPopupMenuItem(
    List<MemberModel> members,
  ) {
    List<PopupMenuItem<int>> popupMenuItems = [
      const PopupMenuItem(
        value: 0,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'All',
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bodyLargeRobotoSemiBold,
        ),
      ),
    ];
    for (MemberModel member in members) {
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
