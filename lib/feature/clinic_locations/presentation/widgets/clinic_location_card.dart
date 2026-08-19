import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/feature/clinic_locations/domain/entities/clinic_location.dart';

class ClinicLocationCard extends StatelessWidget {
  const ClinicLocationCard({
    super.key,
    required this.location,
    this.onDirectionsTap,
    this.onTap,
  });

  final ClinicLocation location;
  final VoidCallback? onDirectionsTap;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColorLight,
                blurRadius: 12,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: location.imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    placeholder: CommonNetworkImage.placeholder,
                    errorWidget: CommonNetworkImage.errorWidget,
                  ),
                ),
                const Gap(14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              location.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.largeBoldRoboto.copyWith(
                                fontSize: 17,
                                height: 1.2,
                              ),
                            ),
                          ),
                          const Gap(8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryCyanLight,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              location.distanceLabel,
                              style: AppTextStyles.bodyTextInter.copyWith(
                                color: AppColors.primaryCyanDark,
                                fontSize: 11.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(6),
                      Text(
                        location.address,
                        style: AppTextStyles.bodyTextInter.copyWith(
                          color: AppColors.textLight,
                          fontSize: 12.5,
                          height: 1.35,
                        ),
                      ),
                      Text(
                        location.hours,
                        style: AppTextStyles.bodyTextInter.copyWith(
                          color: AppColors.textLight,
                          fontSize: 12.5,
                          height: 1.35,
                        ),
                      ),
                      const Gap(10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              location.phone,
                              style: AppTextStyles.bodyTextInter.copyWith(
                                color: AppColors.textLight,
                                fontSize: 12.5,
                                height: 1.35,
                              ),
                            ),
                          ),
                          const Gap(8),
                          GestureDetector(
                            onTap: onDirectionsTap,
                            behavior: HitTestBehavior.opaque,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: AppColors.primaryCyanLight,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.location_on_rounded,
                                size: 18,
                                color: AppColors.primaryCyanDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
