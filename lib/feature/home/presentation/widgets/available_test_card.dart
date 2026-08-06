import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail_item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';

class AvailableTestCard extends StatefulWidget {
  const AvailableTestCard({
    super.key,
    required this.item,
    this.onAddTestPressed,
    this.initialExpanded = false,
  });

  final TreeDetailItem item;
  final VoidCallback? onAddTestPressed;
  final bool initialExpanded;

  @override
  State<AvailableTestCard> createState() => _AvailableTestCardState();
}

class _AvailableTestCardState extends State<AvailableTestCard> {
  late final ValueNotifier<bool> _isExpandedNotifier;

  @override
  void initState() {
    super.initState();
    _isExpandedNotifier = ValueNotifier<bool>(widget.initialExpanded);
  }

  @override
  void dispose() {
    _isExpandedNotifier.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    _isExpandedNotifier.value = !_isExpandedNotifier.value;
    if (_isExpandedNotifier.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          Scrollable.ensureVisible(
            context,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOutCubic,
            alignment: 0.1,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rawName = widget.item.itemName;

    // Parse main title and components from name like:
    // "Anaemia Profile ( Iron,TIBC, Ferritin, B12,Folic, Transferrin )"
    String mainTitle = rawName;
    List<String> components = [];

    if (rawName.contains('(') && rawName.contains(')')) {
      final startIndex = rawName.indexOf('(');
      final endIndex = rawName.indexOf(')');
      mainTitle = rawName.substring(0, startIndex).trim();
      final insideText = rawName.substring(startIndex + 1, endIndex);
      components = insideText
          .split(',')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();
    }

    final categoryName = widget.item.treeName.isNotEmpty
        ? widget.item.treeName.toUpperCase()
        : 'DIAGNOSTICS';

    final itemIdText = widget.item.itemId.isNotEmpty
        ? widget.item.itemId
        : 'S-${widget.item.idItem}';

    final priceFormatted = widget.item.price > 0
        ? '\$${widget.item.price.toStringAsFixed(2)}'
        : 'Free';

    // Sample type deduction
    final isUrine = rawName.toLowerCase().contains('urine');
    final sampleType = isUrine ? '10ml Urine' : '5ml Blood';

    // Preparation deduction
    final isFasting =
        rawName.toLowerCase().contains('anaemia') ||
        rawName.toLowerCase().contains('iron') ||
        rawName.toLowerCase().contains('profile') ||
        rawName.toLowerCase().contains('lipid') ||
        rawName.toLowerCase().contains('glucose') ||
        rawName.toLowerCase().contains('biochemistry');
    final prepInstruction = isFasting
        ? '8-12 hours fasting required. Drink water only.'
        : 'No special preparation required.';

    // General description fallback
    final description =
        'Comprehensive screening for ${mainTitle.toLowerCase()} and related medical conditions.';

    return ValueListenableBuilder<bool>(
      valueListenable: _isExpandedNotifier,
      builder: (context, isExpanded, child) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.6),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Row (Category Badge, ID, Price, Main Title, Toggle Arrow)
                InkWell(
                  onTap: _toggleExpanded,
                  borderRadius: BorderRadius.circular(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Category Tag
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primaryCyan.withValues(
                                  alpha: 0.1,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                categoryName,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5,
                                  color: AppColors.primaryCyan,
                                ),
                              ),
                            ),
                            const Gap(10),
                            // ID
                            Text(
                              'ID: $itemIdText',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.55,
                                ),
                              ),
                            ),
                            const Spacer(),
                            // Price
                            Text(
                              priceFormatted,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryCyan,
                              ),
                            ),
                            const Gap(8),
                            // Quick Add Button (+)
                            BlocBuilder<ItemsBloc, ItemsState>(
                              builder: (context, state) {
                                final isInCart = state.cart.any(
                                  (c) => c.idItem == widget.item.idItem,
                                );
                                final isChanging = state.items.any(
                                  (i) =>
                                      i.idItem == widget.item.idItem &&
                                      i.isChangingCartStatus,
                                );

                                return InkWell(
                                  onTap: isChanging
                                      ? null
                                      : widget.onAddTestPressed,
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: isInCart
                                          ? AppColors.primaryCyan
                                          : AppColors.primaryCyan.withValues(
                                              alpha: 0.12,
                                            ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: isChanging
                                        ? const SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: AppColors.primaryCyan,
                                            ),
                                          )
                                        : Icon(
                                            isInCart
                                                ? Icons.check_rounded
                                                : Icons.add_rounded,
                                            size: 20,
                                            color: isInCart
                                                ? Colors.white
                                                : AppColors.primaryCyan,
                                          ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                mainTitle,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                            ),
                            AnimatedRotation(
                              turns: isExpanded ? 0.5 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOutCubic,
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.6,
                                ),
                                size: 26,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Smooth Expansion for Card Body
                AnimatedCrossFade(
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                  sizeCurve: Curves.easeInOutCubic,
                  firstCurve: Curves.easeOut,
                  secondCurve: Curves.easeIn,
                  firstChild: const SizedBox(width: double.infinity),
                  secondChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 1,
                        color: theme.colorScheme.outlineVariant.withValues(
                          alpha: 0.4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Description Section
                            Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 14.5,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            const Gap(6),
                            Text(
                              description,
                              style: TextStyle(
                                fontSize: 13.5,
                                height: 1.4,
                                color: theme.colorScheme.onSurface.withValues(
                                  alpha: 0.75,
                                ),
                              ),
                            ),

                            // Components Section
                            if (components.isNotEmpty) ...[
                              const Gap(16),
                              Text(
                                'Components',
                                style: TextStyle(
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              const Gap(8),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: components.map((comp) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme
                                          .surfaceContainerHighest
                                          .withValues(alpha: 0.45),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: theme.colorScheme.outlineVariant
                                            .withValues(alpha: 0.5),
                                      ),
                                    ),
                                    child: Text(
                                      comp,
                                      style: TextStyle(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w500,
                                        color: theme.colorScheme.onSurface
                                            .withValues(alpha: 0.85),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],

                            const Gap(18),

                            // Turnaround Time & Sample Row
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Turnaround Time',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: theme.colorScheme.onSurface,
                                        ),
                                      ),
                                      const Gap(6),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_rounded,
                                            size: 16,
                                            color: theme.colorScheme.onSurface
                                                .withValues(alpha: 0.6),
                                          ),
                                          const Gap(6),
                                          Text(
                                            '24-48 Hours',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: theme.colorScheme.onSurface
                                                  .withValues(alpha: 0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sample',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: theme.colorScheme.onSurface,
                                        ),
                                      ),
                                      const Gap(6),
                                      Row(
                                        children: [
                                          Icon(
                                            isUrine
                                                ? Icons.opacity_rounded
                                                : Icons.water_drop_outlined,
                                            size: 16,
                                            color: theme.colorScheme.onSurface
                                                .withValues(alpha: 0.6),
                                          ),
                                          const Gap(6),
                                          Text(
                                            sampleType,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: theme.colorScheme.onSurface
                                                  .withValues(alpha: 0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const Gap(16),

                            // Preparation Box
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: AppColors.primaryCyan.withValues(
                                  alpha: 0.05,
                                ),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: AppColors.primaryCyan.withValues(
                                    alpha: 0.15,
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Preparation',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.onSurface
                                          .withValues(alpha: 0.9),
                                    ),
                                  ),
                                  const Gap(4),
                                  Text(
                                    prepInstruction,
                                    style: TextStyle(
                                      fontSize: 12.5,
                                      color: theme.colorScheme.onSurface
                                          .withValues(alpha: 0.75),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Gap(16),

                            // Add Test Button
                            BlocBuilder<ItemsBloc, ItemsState>(
                              builder: (context, state) {
                                final isInCart = state.cart.any(
                                  (c) => c.idItem == widget.item.idItem,
                                );
                                final isChanging = state.items.any(
                                  (i) =>
                                      i.idItem == widget.item.idItem &&
                                      i.isChangingCartStatus,
                                );

                                return SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: ElevatedButton.icon(
                                    onPressed: isChanging
                                        ? null
                                        : widget.onAddTestPressed,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: isInCart
                                          ? theme.colorScheme.secondaryContainer
                                          : AppColors.primaryCyan,
                                      foregroundColor: isInCart
                                          ? theme
                                              .colorScheme
                                              .onSecondaryContainer
                                          : Colors.white,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    icon: isChanging
                                        ? SizedBox(
                                            width: 18,
                                            height: 18,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: isInCart
                                                  ? theme.colorScheme
                                                      .onSecondaryContainer
                                                  : Colors.white,
                                            ),
                                          )
                                        : Icon(
                                            isInCart
                                                ? Icons
                                                    .check_circle_outline_rounded
                                                : Icons.shopping_cart_outlined,
                                            size: 20,
                                          ),
                                    label: Text(
                                      isChanging
                                          ? (isInCart
                                              ? 'Removing...'
                                              : 'Adding...')
                                          : (isInCart
                                              ? 'In Cart'
                                              : 'Add Test'),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
