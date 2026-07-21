import 'package:flutter/material.dart';
import 'package:patient_portal/feature/home/presentation/widgets/documents_tile.dart';
import 'package:patient_portal/feature/home/presentation/widgets/members_tile.dart';

class HomeQuickActionsSection extends StatelessWidget {
  const HomeQuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: MediaQuery.sizeOf(context).width < 600 ? 2 : 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: MediaQuery.sizeOf(context).width < 600 ? .9 : 1.2,
      crossAxisSpacing: 14,
      mainAxisSpacing: 14,
      children: const [MembersTile(), DocumentsTile()],
    );
  }
}
