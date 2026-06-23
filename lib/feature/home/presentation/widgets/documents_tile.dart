import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_action_card.dart';
import 'package:patient_portal/feature/home/presentation/widgets/unordered_list_tile.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeQuickActionCard(
      title: AppStaticTexts.documents,
      subtitle: AppStaticTexts.documentsSubtitle,
      backgroundImage: Assets.images.homeDocumentsTileBackgroundImage.path,
      onTap: () {
        context.router.root.push(const DocumentsRoute());
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnorderedListTile(title: AppStaticTexts.insuranceDocuments),
          UnorderedListTile(title: AppStaticTexts.passport),
          UnorderedListTile(title: AppStaticTexts.residentPermit),
          UnorderedListTile(title: AppStaticTexts.drivingLicence),
        ],
      ),
    );
  }
}
