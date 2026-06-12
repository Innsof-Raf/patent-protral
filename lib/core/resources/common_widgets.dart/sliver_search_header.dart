import 'package:flutter/material.dart';

class SliverSearchHeader extends StatelessWidget {
  const SliverSearchHeader({
    required this.controller,
    required this.onChanged,
    this.hintText = 'Search',
    this.title,
    this.pinned = true,
    this.horizontalPadding = 16,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;
  final String? title;
  final bool pinned;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: pinned,
      delegate: _SliverSearchHeaderDelegate(
        controller: controller,
        onChanged: onChanged,
        hintText: hintText,
        title: title,
        horizontalPadding: horizontalPadding,
      ),
    );
  }
}

class _SliverSearchHeaderDelegate extends SliverPersistentHeaderDelegate {
  _SliverSearchHeaderDelegate({
    required this.controller,
    required this.onChanged,
    required this.hintText,
    required this.horizontalPadding,
    this.title,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;
  final String? title;
  final double horizontalPadding;

  @override
  double get minExtent => 68;

  @override
  double get maxExtent => title == null ? 76 : 92;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
    final currentExtent = (maxExtent - shrinkOffset).clamp(
      minExtent,
      maxExtent,
    );
    final showTitle = title != null && currentExtent >= 88;
    final radius = BorderRadius.circular(22 - (progress * 6));
    final fieldRadius = BorderRadius.circular(18);

    return ColoredBox(
      color: theme.colorScheme.surface,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          horizontalPadding,
          8,
          horizontalPadding,
          8,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: radius,
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: .58),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withValues(
                  alpha: overlapsContent ? .1 : .04,
                ),
                blurRadius: overlapsContent ? 18 : 10,
                offset: Offset(0, overlapsContent ? 8 : 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: radius,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Stack(
                children: [
                  if (showTitle) ...[
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 1 - progress,
                        child: Text(
                          title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 44,
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.search,
                        onChanged: onChanged,
                        cursorColor: theme.colorScheme.primary,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          hintText: hintText,
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerHighest
                              .withValues(alpha: .34),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 12,
                          ),
                          hintStyle: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: fieldRadius,
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: fieldRadius,
                            borderSide: BorderSide(
                              color: theme.colorScheme.primary,
                              width: 1.3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _SliverSearchHeaderDelegate oldDelegate) {
    return controller != oldDelegate.controller ||
        onChanged != oldDelegate.onChanged ||
        hintText != oldDelegate.hintText ||
        title != oldDelegate.title ||
        horizontalPadding != oldDelegate.horizontalPadding;
  }
}
