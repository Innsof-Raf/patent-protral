import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/widgets/available_test_card.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class AvailableTestsScreen extends StatefulWidget {
  const AvailableTestsScreen({
    super.key,
    required this.idTreedetail,
    required this.categoryName,
  });

  final int idTreedetail;
  final String categoryName;

  @override
  State<AvailableTestsScreen> createState() => _AvailableTestsScreenState();
}

class _AvailableTestsScreenState extends State<AvailableTestsScreen> {
  final TextEditingController searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _fetchTreeDetailItems();
  }

  void _fetchTreeDetailItems() {
    final token = context.read<UserBloc>().state.user?.accessToken;
    if (token != null) {
      context.read<HomeBloc>().add(
        HomeEvent.getTreeDetailItem(
          token: token,
          idTreedetail: widget.idTreedetail,
        ),
      );
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: CommonAppbar(title: widget.categoryName),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isTreeDetailItemsFetching) {
            return const CommonLoadingView();
          }

          if (state.isTreeDetailItemsFetchingFailed) {
            return CommonErrorView(
              title: context.lang.unableToLoadServices,
              message: state.error.message,
              onRetry: _fetchTreeDetailItems,
            );
          }

          final allItems = state.treeDetailItems;
          final filteredItems = _searchQuery.isEmpty
              ? allItems
              : allItems
                    .where(
                      (item) =>
                          item.itemName.toLowerCase().contains(
                            _searchQuery.toLowerCase(),
                          ) ||
                          item.treeName.toLowerCase().contains(
                            _searchQuery.toLowerCase(),
                          ) ||
                          item.itemId.toLowerCase().contains(
                            _searchQuery.toLowerCase(),
                          ),
                    )
                    .toList();

          return RefreshIndicator(
            onRefresh: () async => _fetchTreeDetailItems(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                // Top Header Section: Available Tests
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available Tests',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        const Gap(6),
                        Text(
                          'Select investigations to view details and add to your booking.',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 14,
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.65,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Search Bar
                SliverAppBar(
                  floating: true,
                  pinned: false,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  toolbarHeight: 56,
                  automaticallyImplyLeading: false,
                  backgroundColor: theme.colorScheme.surface,
                  surfaceTintColor: theme.colorScheme.surface,
                  centerTitle: false,
                  title: Container(
                    height: 46,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(top: 3),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest
                          .withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: context.lang.searchServices,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.4,
                          ),
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 11,
                        ),
                      ),
                    ),
                  ),
                  titleSpacing: 0,
                ),

                const SliverToBoxAdapter(child: Gap(12)),

                if (filteredItems.isEmpty)
                  SliverFillRemaining(
                    child: CommonEmptyState(
                      title: context.lang.noServicesFound,
                      description: context.lang.noServicesFoundMessage,
                      icon: Icons.biotech_outlined,
                      actionLabel: context.lang.refresh,
                      onAction: _fetchTreeDetailItems,
                    ),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final item = filteredItems[index];
                        return AvailableTestCard(
                          item: item,
                          initialExpanded: false,
                          onAddTestPressed: () {
                            final user = context.read<UserBloc>().state.user;
                            if (user != null) {
                              final itemToCart = Item(
                                idItem: item.idItem,
                                itemNmae: item.itemName,
                                itemPrice: item.price,
                                itemImg: '',
                                itemShortDesc: item.treeName,
                                itemType: 'test',
                                isCart: true,
                              );
                              context.read<ItemsBloc>().add(
                                UpdateItemCartSatus(
                                  idItem: item.idItem,
                                  idUser: user.id,
                                  token: user.accessToken,
                                  item: itemToCart,
                                ),
                              );
                            }
                          },
                        );
                      }, childCount: filteredItems.length),
                    ),
                  ),

                // Scheduling Note Card at Bottom
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.primaryCyan.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.primaryCyan.withValues(alpha: 0.2),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryCyan.withValues(
                                alpha: 0.12,
                              ),
                            ),
                            child: const Icon(
                              Icons.info_outline_rounded,
                              color: AppColors.primaryCyan,
                              size: 20,
                            ),
                          ),
                          const Gap(14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Scheduling Note',
                                  style: TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.onSurface,
                                  ),
                                ),
                                const Gap(4),
                                Text(
                                  'For tests requiring fasting, we recommend morning appointments between 7:00 AM and 10:00 AM.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    height: 1.35,
                                    color: theme.colorScheme.onSurface
                                        .withValues(alpha: 0.75),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
