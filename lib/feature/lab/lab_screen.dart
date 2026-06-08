import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/lab/blocs/items_bloc/items_bloc.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/route/route_constants.dart';

import '../../resources/app_colors.dart';
import '../profile/bloc/user_bloc.dart';
import 'widgets/lab_screen_appbar.dart';
import 'widgets/lab_tab_bar.dart';
import 'widgets/packages_tab_bar_view.dart';
import 'widgets/tests_tab_bar_view.dart';

class LabScreen extends StatelessWidget {
  const LabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ItemsBloc>().add(
          GetItems(token: context.read<UserBloc>().state.user!.accessToken));
    });
    return Scaffold(
      appBar: const LabScreenAppbar(),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
                indicatorColor: AppColors.vilot,
                indicatorWeight: 3,
                tabs: [LabTabBar(title: 'Packages'), LabTabBar(title: 'Test')]),
            Container(
              color: AppColors.dividerGrayColor,
              height: 1,
              width: double.infinity,
            ),
            BlocListener<ItemsBloc, ItemsState>(
              listener: (context, state) {
                if (state.isCartUpdatingFailed && !state.isCartUpdatingSucees) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text('Cart updating failed due to ${state.error}')));
                }
                // TODO: implement  remove from cart  confirmation popup
              },
              child: const Expanded(
                  child: TabBarView(
                children: [PackagesTabBarView(), TsetsTabBarView()],
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 1, color: AppColors.black.withValues(alpha: .25))
        ]),
        child: Row(
          children: [
            Expanded(
                child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.symmetric(vertical: 25),
                minimumSize: const Size(0, 0),
                foregroundColor: AppColors.vilot,
                backgroundColor: AppColors.white,
                elevation: 0,
              ),
              child: Text(
                'VIEW CART',
                style: AppTextStyles.largeBoldRoboto
                    .copyWith(color: AppColors.vilot),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstants.cartScreen);
              },
            )),
            Expanded(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.symmetric(vertical: 25),
                minimumSize: const Size(0, 0),
                foregroundColor: AppColors.white,
                backgroundColor: AppColors.vilot,
                elevation: 0,
              ),
              child: Text(
                'CHECK OUT',
                style: AppTextStyles.largeBoldRoboto
                    .copyWith(color: AppColors.white),
              ),
              onPressed: () {},
            ))
          ],
        ),
      ),
    );
  }
}
