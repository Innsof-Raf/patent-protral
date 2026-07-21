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
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            size: 10,
            color: theme.colorScheme.primary,
          ),
          const Gap(8),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bodyTextRoboto.copyWith(
                color: theme.colorScheme.onSurface,
                fontSize: 10,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
