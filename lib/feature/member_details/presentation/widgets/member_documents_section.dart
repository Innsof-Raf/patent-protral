import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_details_section_card.dart';
import 'package:patient_portal/feature/profile/domain/entities/member_document.dart';

class MemberDocumentsSection extends StatelessWidget {
  const MemberDocumentsSection({super.key, required this.documents});

  final List<MemberDocument> documents;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MemberDetailsSectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Documents',
            style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 14),
          if (documents.isEmpty)
            Text(
              'No documents uploaded for this member.',
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            )
          else
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: documents.length,
              itemBuilder: (context, index) {
                return _DocumentTile(document: documents[index]);
              },
            ),
        ],
      ),
    );
  }
}

class _DocumentTile extends StatelessWidget {
  const _DocumentTile({required this.document});

  final MemberDocument document;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .32),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(Icons.description_outlined, color: theme.colorScheme.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              document.docName,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(width: 8),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.download_rounded, size: 18),
            label: const Text('Download'),
          ),
        ],
      ),
    );
  }
}
