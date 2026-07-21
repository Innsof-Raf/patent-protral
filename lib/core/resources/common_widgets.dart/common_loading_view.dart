import 'package:flutter/material.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class CommonLoadingView extends StatelessWidget {
  const CommonLoadingView({
    this.size = 80,
    this.padding = const EdgeInsets.all(32),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            Assets.gifImages.ripple02.path,
            width: size,
            height: size,
          ),
        ],
      ),
    );

    return Center(
      child: showContainer
          ? Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.shadowColorLight,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: loader,
            )
          : loader,
    );
  }
}
