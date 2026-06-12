import 'package:flutter/material.dart';
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
          title: 'Find Specialist',
          subtitle: 'Consult top doctors online for any health concern',
          actionTooltip: 'View all specialities',
          onViewAll: () {
            MainScreenHelpers.mainScreenNotifier.value = 2;
          },
        ),
        const SizedBox(height: 14),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: specialities.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: MediaQuery.sizeOf(context).width < 600
                ? 1.08
                : 1.35,
            crossAxisCount: MediaQuery.sizeOf(context).width < 600 ? 4 : 6,
          ),
          itemBuilder: (context, index) =>
              HomeSpecialityCard(speciality: specialities[index]),
        ),
      ],
    );
  }
}
