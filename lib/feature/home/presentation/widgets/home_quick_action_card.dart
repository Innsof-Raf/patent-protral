import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class HomeQuickActionCard extends StatelessWidget {
  const HomeQuickActionCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.backgroundImage,
    this.child,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final String backgroundImage;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.all(child == null ? 16 : 14),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: .72),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withValues(alpha: .05),
                blurRadius: 16,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: theme.colorScheme.onSurface,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                subtitle,
                maxLines: child == null ? 2 : 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.bodyTextRoboto.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.35,
                ),
              ),
              if (child != null) ...[
                const SizedBox(height: 8),
                Expanded(child: child!),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
