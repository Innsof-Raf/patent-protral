import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
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

class _LabScreenState extends State<LabScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ItemsBloc>().add(
      GetItems(token: context.read<UserBloc>().state.user!.accessToken),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppbar(
        title: AppStaticTexts.labTestCategories,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: theme.colorScheme.primary,
              indicatorWeight: 3,
              tabs: const [
                LabTabBar(title: AppStaticTexts.packages),
                LabTabBar(title: AppStaticTexts.test),
              ],
            ),
            Container(
              color: AppColors.dividerGrayColor,
              height: 1,
              width: double.infinity,
            ),
            BlocListener<ItemsBloc, ItemsState>(
              listener: (context, state) {
                if (state.isCartUpdatingFailed && !state.isCartUpdatingSucees) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${AppStaticTexts.cartUpdatingFailed} ${state.error}',
                      ),
                    ),
                  );
                }
                // TODO: implement  remove from cart  confirmation popup
              },
              child: const Expanded(
                child: TabBarView(
                  children: [PackagesTabBarView(), TsetsTabBarView()],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: AppColors.black.withValues(alpha: .25),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  minimumSize: const Size(0, 0),
                  foregroundColor: theme.colorScheme.primary,
                  backgroundColor: theme.colorScheme.surface,
                  elevation: 0,
                ),
                child: Text(
                  AppStaticTexts.viewCart,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  context.router.push(const CartRoute());
                },
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  minimumSize: const Size(0, 0),
                  foregroundColor: theme.colorScheme.onPrimary,
                  backgroundColor: theme.colorScheme.primary,
                  elevation: 0,
                ),
                child: Text(
                  AppStaticTexts.checkOut,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
