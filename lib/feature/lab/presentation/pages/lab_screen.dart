import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/lab_screen_appbar.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/lab_tab_bar.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/packages_tab_bar_view.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/tests_tab_bar_view.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';

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
    return Scaffold(
      appBar: const LabScreenAppbar(),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: AppColors.vilot,
              indicatorWeight: 3,
              tabs: [
                LabTabBar(title: 'Packages'),
                LabTabBar(title: 'Test'),
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
                        'Cart updating failed due to ${state.error}',
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
                  foregroundColor: AppColors.vilot,
                  backgroundColor: AppColors.white,
                  elevation: 0,
                ),
                child: Text(
                  'VIEW CART',
                  style: AppTextStyles.largeBoldRoboto.copyWith(
                    color: AppColors.vilot,
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
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.vilot,
                  elevation: 0,
                ),
                child: Text(
                  'CHECK OUT',
                  style: AppTextStyles.largeBoldRoboto.copyWith(
                    color: AppColors.white,
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
