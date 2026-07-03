import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_section_header.dart';

enum HomeBookServiceType {
  hospitalAppointment,
  videoConsultation,
  consultDoctorNow,
  radiologyScans,
}

class HomeBookServiceSection extends StatelessWidget {
  const HomeBookServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = context.lang;
    final items = [
      _BookServiceItem(
        type: HomeBookServiceType.hospitalAppointment,
        title: lang.bookHospitalAppointment,
        imageAssetPath: Assets.images.bookServiceHospitalAppointment.path,
        bandColors: const [
          AppColors.bookServiceBlueBandStart,
          AppColors.bookServiceBlueBandEnd,
        ],
      ),
      _BookServiceItem(
        type: HomeBookServiceType.videoConsultation,
        title: lang.bookVideoConsultation,
        imageAssetPath: Assets.images.bookServiceVideoConsultation.path,
        bandColors: const [
          AppColors.bookServiceGreenBandStart,
          AppColors.bookServiceGreenBandEnd,
        ],
      ),
      _BookServiceItem(
        type: HomeBookServiceType.consultDoctorNow,
        title: lang.consultDoctorNow,
        imageAssetPath: Assets.images.bookServiceConsultDoctorNow.path,
        bandColors: const [
          AppColors.bookServiceConsultNowStart,
          AppColors.bookServiceConsultNowEnd,
        ],
      ),
      _BookServiceItem(
        type: HomeBookServiceType.radiologyScans,
        title: lang.bookRadiologyScans,
        imageAssetPath: Assets.images.bookServiceRadiologyScans.path,
        bandColors: const [
          AppColors.bookServiceRadiologyStart,
          AppColors.bookServiceRadiologyEnd,
        ],
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(title: lang.bookAService, subtitle: ''),
        const Gap(16),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            mainAxisExtent: 160,
          ),
          itemBuilder: (context, index) => _BookServiceTile(item: items[index]),
        ),
      ],
    );
  }
}

class _BookServiceTile extends StatelessWidget {
  const _BookServiceTile({required this.item});

  final _BookServiceItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: .08),
            blurRadius: 14,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            switch (item.type) {
              case HomeBookServiceType.hospitalAppointment:
                // TODO: Navigate to Hospital Appointment
                break;
              case HomeBookServiceType.videoConsultation:
                // TODO: Navigate to Video Consultation
                break;
              case HomeBookServiceType.consultDoctorNow:
                // TODO: Navigate to Consult Doctor Now
                break;
              case HomeBookServiceType.radiologyScans:
                // TODO: Navigate to Radiology Scans
                break;
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              children: [
                Expanded(
                  child: ColoredBox(
                    color: AppColors.bookServiceTileBackground,
                    child: Image.asset(
                      item.imageAssetPath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: item.bandColors),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      item.title,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
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

class _BookServiceItem {
  const _BookServiceItem({
    required this.type,
    required this.title,
    required this.imageAssetPath,
    required this.bandColors,
  });

  final HomeBookServiceType type;
  final String title;
  final String imageAssetPath;
  final List<Color> bandColors;
}
