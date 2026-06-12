import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/home/presentation/widgets/unorderd_list_tile.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        context.router.push(const DocumentsRoute());
      },
      child: Container(
        padding: EdgeInsets.all(size.width < 600 ? 10 : 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.homeDocumentsTileBagroundImage.path,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(11.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Documents',
              style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                fontSize: 13,
                color: AppColors.textDark,
              ),
            ),
            const SizedBox(height: 4),
            const UnorderdListTile(title: 'Insurance Documents'),
            const UnorderdListTile(title: 'Passport'),
            const UnorderdListTile(title: 'Resident Permit'),
            const UnorderdListTile(title: 'Driving Licence'),
            const Spacer(),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size(0, 0),
                elevation: 0,
                backgroundColor: AppColors.transparent,
                shape: const CircleBorder(
                  side: BorderSide(width: .4, color: AppColors.textDark),
                ),
                padding: const EdgeInsets.all(4),
              ),
              onPressed: () {
                context.router.push(const DocumentsRoute());
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textDark,
                size: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
