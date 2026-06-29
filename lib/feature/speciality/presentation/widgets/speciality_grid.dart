import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_tile.dart';

class SpecialityGrid extends StatelessWidget {
  const SpecialityGrid({super.key, required this.specialities});

  final List<Speciality> specialities;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 112),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Column(
            children: [
              SpecialityTile(speciality: specialities[index]),
              if (index != specialities.length - 1)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    height: 1,
                    color: AppColors.primaryCyan.withValues(alpha: 0.2),
                  ),
                ),
            ],
          );
        }, childCount: specialities.length),
      ),
    );
  }
}
