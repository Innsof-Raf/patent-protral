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
  double get minExtent => 72;

  @override
  double get maxExtent => title == null ? 72 : 100;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    final double extentDifference = maxExtent - minExtent;
    final progress = extentDifference <= 0
        ? 0.0
        : (shrinkOffset / extentDifference).clamp(0.0, 1.0);

    return Container(
      color: theme.colorScheme.surface,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 8),
      child: Stack(
        children: [
          if (title != null && progress < 0.9)
            Opacity(
              opacity: (1 - progress * 1.2).clamp(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 4, top: 6),
                child: Text(
                  title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 48,
              child: TextField(
                controller: controller,
                onChanged: onChanged,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: theme.colorScheme.primary,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surfaceContainerHighest
                      .withValues(alpha: 0.3),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: theme.colorScheme.outlineVariant.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: theme.colorScheme.primary,
                      width: 1.5,
                    ),
                  ),
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
