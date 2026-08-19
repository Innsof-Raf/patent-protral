import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/clinic_locations/domain/entities/clinic_location.dart';
import 'package:patient_portal/feature/clinic_locations/presentation/widgets/clinic_location_card.dart';

class OurLocationsScreenBody extends StatelessWidget {
  const OurLocationsScreenBody({super.key});

  static const List<ClinicLocation> _locations = [
    ClinicLocation(
      id: '1',
      name: 'Downtown Health',
      address: '120 Medical Plaza, Suite 400',
      hours: 'Mon-Fri: 8am - 6pm',
      phone: '(555) 123-4567',
      imageUrl: 'https://picsum.photos/seed/downtown-health/200',
      distanceLabel: '0.8 mi',
    ),
    ClinicLocation(
      id: '2',
      name: 'Westside Care',
      address: '850 Parkway Ave',
      hours: 'Mon-Sat: 7am - 8pm',
      phone: '(555) 987-6543',
      imageUrl: 'https://picsum.photos/seed/westside-care/200',
      distanceLabel: '3.2 mi',
    ),
    ClinicLocation(
      id: '3',
      name: 'North Hills',
      address: '200 Pine Road',
      hours: 'Mon-Fri: 9am - 5pm',
      phone: '(555) 456-7890',
      imageUrl: 'https://picsum.photos/seed/north-hills/200',
      distanceLabel: '5.5 mi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGray,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
        itemCount: _locations.length + 1,
        separatorBuilder: (_, index) => const Gap(16),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.lang.ourLocations,
                    style: AppTextStyles.xXLargeRobotoSemiBold.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                  ),
                  const Gap(6),
                  Text(
                    context.lang.clinicsAvailableNearYou(_locations.length),
                    style: AppTextStyles.largeRobotoNormal.copyWith(
                      color: AppColors.textLight,
                    ),
                  ),
                ],
              ),
            );
          }

          final location = _locations[index - 1];
          return ClinicLocationCard(location: location, onDirectionsTap: () {});
        },
      ),
    );
  }
}
