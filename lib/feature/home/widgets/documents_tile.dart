import 'package:flutter/material.dart';
import 'package:patient_portal/route/route_constants.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import 'unorderd_list_tile.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(RouteConstants.documentsScreen);
      },
      child: Container(
        padding: EdgeInsets.all(size.width < 600 ? 10 : 20),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                  'assets/images/home_documents_tile_baground_image.png'),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(11.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Documents',
              style: AppTextStyles.bodyLargeRobotoSemiBold
                  .copyWith(fontSize: 13, color: AppColors.textDark),
            ),
            const SizedBox(
              height: 4,
            ),
            const UnorderdListTile(
              title: 'Insurance Documents',
            ),
            const UnorderdListTile(
              title: 'Passport',
            ),
            const UnorderdListTile(
              title: 'Resident Permit',
            ),
            const UnorderdListTile(
              title: 'Driving Licence',
            ),
            const Spacer(),
            ElevatedButton(
                style: OutlinedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: const Size(0, 0),
                    elevation: 0,
                    backgroundColor: AppColors.transparent,
                    shape: const CircleBorder(
                        side: BorderSide(width: .4, color: AppColors.textDark)),
                    padding: const EdgeInsets.all(4)),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConstants.documentsScreen);
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textDark,
                  size: 10,
                ))
          ],
        ),
      ),
    );
  }
}
