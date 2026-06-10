import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/dimens.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    required this.bookingDate,
    required this.bookingMonth,
    required this.title,
    required this.subTitle,
    required this.description,
    super.key,
  });

  final String bookingDate;
  final String bookingMonth;
  final String title;
  final String subTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.borderColor, width: 0.5),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.vilot,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.borderColor, width: 0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bookingDate,
                      style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      bookingMonth,
                      style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Dimens.constWidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                  color: AppColors.textDark,
                ),
              ),
              const SizedBox(height: 5),
              Text(subTitle, style: AppTextStyles.bodySmallInterNormal),
              Text(description, style: AppTextStyles.bodySmallInterNormal),
            ],
          ),
        ],
      ),
    );
  }
}
