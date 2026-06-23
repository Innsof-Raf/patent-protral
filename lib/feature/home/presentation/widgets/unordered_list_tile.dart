import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class UnorderedListTile extends StatelessWidget {
  const UnorderedListTile({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          CircleAvatar(
            radius: 2,
            backgroundColor: theme.colorScheme.onSurfaceVariant,
          ),
          const Gap(6),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyTextRoboto.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
