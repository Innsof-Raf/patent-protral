import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_section_header.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_speciality_card.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class HomeSpecialitiesSection extends StatelessWidget {
  const HomeSpecialitiesSection({required this.specialities, super.key});

  final List<Speciality> specialities;

  @override
  Widget build(BuildContext context) {
    if (specialities.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          title: AppStaticTexts.findDoctorBySpeciality,
          subtitle: '',
          actionTooltip: AppStaticTexts.viewAllSpecialities,
          onViewAll: () {
            MainScreenHelpers.mainScreenNotifier.value = 2;
          },
        ),
        const Gap(16),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: specialities.length > 8 ? 8 : specialities.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 8,
            mainAxisExtent: 118,
          ),
          itemBuilder: (context, index) {
            return HomeSpecialityCard(speciality: specialities[index]);
          },
        ),
      ],
    );
  }
}
