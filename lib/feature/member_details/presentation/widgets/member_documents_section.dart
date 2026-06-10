import 'package:flutter/material.dart';
import 'package:patient_portal/feature/profile/domain/entities/member_document.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class MemberDocumentsSection extends StatelessWidget {
  final List<MemberDocument> documents;

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
