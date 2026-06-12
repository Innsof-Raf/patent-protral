import 'package:flutter/material.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_tile.dart';

class SpecialityGrid extends StatelessWidget {
  const SpecialityGrid({super.key, required this.specialities});

  final List<Speciality> specialities;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 112),
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.crossAxisExtent;
          final crossAxisCount = width < 360
              ? 2
              : width < 620
              ? 3
              : width < 920
              ? 4
              : 5;

          return SliverGrid.builder(
            itemCount: specialities.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: width < 360 ? .92 : .98,
            ),
            itemBuilder: (context, index) {
              return SpecialityTile(speciality: specialities[index]);
            },
          );
        },
      ),
    );
  }
}
