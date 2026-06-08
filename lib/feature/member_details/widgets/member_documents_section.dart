import 'package:flutter/material.dart';
import 'package:patient_portal/feature/profile/models/member_document_model/member_document_model.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class MemberDocumentsSection extends StatelessWidget {
  final List<MmemberDocumentModel> documents;

  const MemberDocumentsSection({super.key, required this.documents});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: documents.length,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              documents[index].docName,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: AppColors.textDark,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.skyblue,
              minimumSize: const Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            child: Text(
              'Download',
              style: AppTextStyles.bodyLargeRobotoBold.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.skyblue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
