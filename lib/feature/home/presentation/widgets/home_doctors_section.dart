import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_tile.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_section_header.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';

class HomeDoctorsSection extends StatelessWidget {
  const HomeDoctorsSection({required this.doctors, super.key});

  final List<Doctor> doctors;

  @override
  Widget build(BuildContext context) {
    if (doctors.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          title: AppStaticTexts.topDoctors,
          subtitle: AppStaticTexts.topDoctorsSubtitle,
          actionTooltip: AppStaticTexts.viewAllDoctors,
          onViewAll: () {
            MainScreenHelpers.mainScreenNotifier.value = 2;
          },
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: doctors.length > 3 ? 3 : doctors.length,
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) {
            return DoctorTile(doctor: doctors[index]);
          },
        ),
      ],
    );
  }
}
