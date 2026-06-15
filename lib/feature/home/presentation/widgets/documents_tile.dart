import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_action_card.dart';
import 'package:patient_portal/feature/home/presentation/widgets/unorderd_list_tile.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeQuickActionCard(
      title: 'Documents',
      subtitle: 'Keep important records ready',
      backgroundImage: Assets.images.homeDocumentsTileBagroundImage.path,
      onTap: () {
        context.router.root.push(const DocumentsRoute());
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnorderdListTile(title: 'Insurance Documents'),
          UnorderdListTile(title: 'Passport'),
          UnorderdListTile(title: 'Resident Permit'),
          UnorderdListTile(title: 'Driving Licence'),
        ],
      ),
    );
  }
}
