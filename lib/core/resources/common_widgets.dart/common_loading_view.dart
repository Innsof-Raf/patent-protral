import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';

class CommonLoadingView extends StatelessWidget {
  const CommonLoadingView({
    this.size = 96,
    this.padding = const EdgeInsets.all(24),
    this.showContainer = true,
    this.color,
    super.key,
  });

  final double size;
  final EdgeInsetsGeometry padding;
  final bool showContainer;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loader = Padding(
      padding: padding,
      child: Image.asset(
        Assets.gifImages.ripple02.path,
        width: size,
        color: color,
        semanticLabel: 'Loading',
      ),
    );

    return Center(
      child: showContainer
          ? DecoratedBox(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.shadow.withValues(alpha: .08),
                    blurRadius: 22,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
              child: loader,
            )
          : loader,
    );
  }
}
