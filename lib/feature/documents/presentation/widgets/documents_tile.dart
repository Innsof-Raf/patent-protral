import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';

class DocumentTile extends StatelessWidget {
  final Document document;
  const DocumentTile({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.borderColor,
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: const BorderSide(color: AppColors.borderColor, width: .5),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: const EdgeInsets.all(13),
      ),
      onPressed: () {},
      child: Row(
        children: [
          SvgPicture.asset(Assets.icons.pdfIcon.path, height: 25, width: 21),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  document.docName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  '${context.lang.expireOn} ${DateFormat('dd/MM/yyyy', context.currentLang).format(document.expireDate).localize(context.currentLang)}',
                  style: AppTextStyles.largeRobotoNormal.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.dividerGrayColor,
              shape: const CircleBorder(),
              elevation: 0,
              padding: const EdgeInsets.all(10),
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {},
            child: SvgPicture.asset(Assets.icons.shareIcon.path),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.dividerGrayColor,
              shape: const CircleBorder(),
              elevation: 0,
              padding: const EdgeInsets.all(10),
              minimumSize: const Size(0, 0),
            ),
            onPressed: () {},
            child: SvgPicture.asset(Assets.icons.deleteIcon.path),
          ),
        ],
      ),
    );
  }
}
