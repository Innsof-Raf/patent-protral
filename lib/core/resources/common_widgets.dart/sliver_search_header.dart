import 'package:flutter/material.dart';

class SliverSearchHeader extends StatelessWidget {
  const SliverSearchHeader({
    required this.controller,
    required this.onChanged,
    this.hintText = 'Search...',
    this.title,
    this.pinned = true,
    this.horizontalPadding = 20,
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
  double get minExtent => 80;

  @override
  double get maxExtent => title == null ? 80 : 120;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);

    return Container(
      color: theme.colorScheme.surface,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null && progress < 0.5)
            Opacity(
              opacity: (1 - progress * 2).clamp(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 4),
                child: Text(
                  title!,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          TextField(
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(
                Icons.search_rounded,
                color: theme.colorScheme.primary,
              ),
              filled: true,
              fillColor: theme.colorScheme.surfaceContainerHighest.withValues(
                alpha: 0.3,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: theme.colorScheme.outlineVariant.withValues(
                    alpha: 0.5,
                  ),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
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
