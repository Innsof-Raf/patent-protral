import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_snack_bar.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/lab_tab_bar.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/packages_tab_bar_view.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/tests_tab_bar_view.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'LabRoute')
class LabScreen extends StatefulWidget {
  const LabScreen({super.key});

  @override
  State<LabScreen> createState() => _LabScreenState();
}

class _LabScreenState extends State<LabScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);

    _fetchItems();
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      _fetchItems();
    }
  }

  void _fetchItems() {
    context.read<ItemsBloc>().add(
      GetItems(token: context.read<UserBloc>().state.user!.accessToken),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppbar(
        title: context.lang.labTestCategories,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
            tooltip: context.lang.searchTests,
          ),
        ],
      ),
      body: Column(
        children: [
          Material(
            color: theme.colorScheme.surface,
            child: TabBar(
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicatorColor: theme.colorScheme.primary,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: theme.colorScheme.primary,
              unselectedLabelColor: theme.disabledColor,
              labelStyle: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
              unselectedLabelStyle: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
              tabs: [
                LabTabBar(title: context.lang.packages),
                LabTabBar(title: context.lang.test),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: theme.dividerColor.withValues(alpha: 0.05),
          ),
          Expanded(
            child: BlocListener<ItemsBloc, ItemsState>(
              listener: (context, state) {
                if (state.isCartUpdatingFailed && !state.isCartUpdatingSucees) {
                  CommonSnackBar.show(
                    context,
                    message:
                        '${context.lang.cartUpdatingFailed} ${state.error}',
                    type: SnackBarType.error,
                  );
                }
              },
              child: TabBarView(
                controller: _tabController,
                children: [PackagesTabBarView(), TestsTabBarView()],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(
          16,
          16,
          16,
          MediaQuery.paddingOf(context).bottom + 16,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: ActiveOutlinedButton(
                onPressed: () {
                  context.router.push(const CartRoute());
                },
                child: Text(context.lang.viewCart),
              ),
            ),
            const Gap(12),
            Expanded(
              child: ActiveButton(
                onPressed: () {
                  // TODO: Implement Checkout navigation
                },
                child: Text(context.lang.checkOut),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
