import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/common_models/insurance/insurance_model.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_insurance_card.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_section_header.dart';

class HomeInsuranceSection extends StatelessWidget {
  const HomeInsuranceSection({required this.insurances, super.key});

  final List<InsuranceModel> insurances;

  @override
  Widget build(BuildContext context) {
    if (insurances.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          title: 'Medical Insurance',
          subtitle: 'We are providing following medical insurance',
          actionTooltip: 'View insurance',
          onViewAll: () {
            context.router.root.push(const MedicalInsuranceRoute());
          },
        ),
        const SizedBox(height: 14),
        GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: insurances.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.sizeOf(context).width < 600 ? 3 : 6,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.55,
          ),
          itemBuilder: (context, index) =>
              HomeInsuranceCard(insurance: insurances[index]),
        ),
      ],
    );
  }
}
