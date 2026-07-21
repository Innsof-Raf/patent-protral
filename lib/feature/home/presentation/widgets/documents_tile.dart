import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_action_card.dart';
import 'package:patient_portal/feature/home/presentation/widgets/unordered_list_tile.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeQuickActionCard(
      title: context.lang.documents,
      subtitle: context.lang.documentsSubtitle,
      icon: Icons.description_rounded,
      onTap: () => context.router.root.push(const DocumentsRoute()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnorderedListTile(title: context.lang.insuranceDocuments),
          UnorderedListTile(title: context.lang.passport),
          UnorderedListTile(title: context.lang.residentPermit),
          UnorderedListTile(title: context.lang.drivingLicence),
        ],
      ),
    );
  }
}
