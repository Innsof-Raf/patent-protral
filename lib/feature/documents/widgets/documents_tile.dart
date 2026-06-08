import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/documents/models/documents_model/document_model.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class DocumentTile extends StatelessWidget {
  final DocumentModel document;
  const DocumentTile({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
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
          SvgPicture.asset("assets/icons/pdf_icon.svg", height: 25, width: 21),
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
                  style: AppTextStyles.bodyLargeRobotoSemiBold,
                ),
                const SizedBox(height: 1),
                Text(
                  DateFormat(
                    'expire on dd/MM/yyyy',
                  ).format(document.expireDate),
                  style: AppTextStyles.bodyTextInter,
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
            child: SvgPicture.asset('assets/icons/share_icon.svg'),
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
            child: SvgPicture.asset('assets/icons/delete_icon.svg'),
          ),
        ],
      ),
    );
  }
}
