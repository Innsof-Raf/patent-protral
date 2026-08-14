import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/pages/available_tests_screen.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'RadiologyScansRoute')
class RadiologyScansScreen extends StatefulWidget {
  const RadiologyScansScreen({super.key});

  @override
  State<RadiologyScansScreen> createState() => _RadiologyScansScreenState();
}

class _RadiologyScansScreenState extends State<RadiologyScansScreen> {
  final TextEditingController searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _fetchTreeDetails();
  }

  void _fetchTreeDetails() {
    final token = context.read<UserBloc>().state.user?.accessToken;
    if (token != null) {
      context.read<HomeBloc>().add(
        HomeEvent.getTreeDetail(token: token, idTreedetail: 0),
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
      appBar: CommonAppbar(title: context.lang.bookRadiologyScans),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isTreeDetailFetching) {
            return const CommonLoadingView();
          }

          if (state.isTreeDetailFetchingFailed) {
            return CommonErrorView(
              title: context.lang.unableToLoadServices,
              message: state.error.message,
              onRetry: _fetchTreeDetails,
            );
          }

          final allItems = state.treeDetails;
          final filteredItems = _searchQuery.isEmpty
              ? allItems
              : allItems
                    .where(
                      (item) => item.treeName.toLowerCase().contains(
                        _searchQuery.toLowerCase(),
                      ),
                    )
                    .toList();

          return RefreshIndicator(
            onRefresh: () async => _fetchTreeDetails(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
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
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      context.lang.allServices,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.9,
                        ),
                      ),
                    ),
                  ),
                ),
                if (filteredItems.isEmpty)
                  SliverFillRemaining(
                    child: CommonEmptyState(
                      title: context.lang.noServicesFound,
                      description: context.lang.noServicesFoundMessage,
                      icon: Icons.biotech_outlined,
                      actionLabel: context.lang.refresh,
                      onAction: _fetchTreeDetails,
                    ),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.only(bottom: 100),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final item = filteredItems[index];
                        return Column(
                          children: [
                            _TreeDetailTile(item: item),
                            if (index != filteredItems.length - 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Divider(
                                  height: 1,
                                  color: AppColors.primaryCyan.withValues(
                                    alpha: 0.2,
                                  ),
                                ),
                              ),
                          ],
                        );
                      }, childCount: filteredItems.length),
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

class _TreeDetailTile extends StatelessWidget {
  const _TreeDetailTile({required this.item});

  final TreeDetail item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AvailableTestsScreen(
              idTreedetail: item.idTreedetail,
              categoryName: item.treeName,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryCyan.withValues(alpha: 0.1),
              ),
              child: Icon(
                Icons.biotech_rounded,
                color: AppColors.primaryCyan,
                size: 22,
              ),
            ),
            const Gap(16),
            Expanded(
              child: Text(
                item.treeName,
                style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.9),
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                ),
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
