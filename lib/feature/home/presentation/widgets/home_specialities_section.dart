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
          title: AppStaticTexts.findSpecialist,
          subtitle: AppStaticTexts.findSpecialistSubtitle,
          actionTooltip: AppStaticTexts.viewAllSpecialities,
          onViewAll: () {
            MainScreenHelpers.mainScreenNotifier.value = 2;
          },
        ),
        SizedBox(
          height: 125,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: specialities.length,
            separatorBuilder: (context, index) => const Gap(12),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SizedBox(
                  width: 120,
                  child: HomeSpecialityCard(speciality: specialities[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
