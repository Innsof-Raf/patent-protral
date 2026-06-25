import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_bottom_action_button.dart';
import 'package:patient_portal/feature/cart/presentation/widgets/cart_item_tile.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';

@RoutePage(name: 'CartRoute')
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const CommonAppbar(title: AppStaticTexts.myCart),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          return state.cart.isEmpty
              ? Center(
                  child: Text(
                    AppStaticTexts.yourCartIsEmpty,
                    style: AppTextStyles.subHeadingSemiBoldRoboto,
                  ),
                )
              : GridView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: state.cart.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .9,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) =>
                      CartItemTile(item: state.cart[index]),
                );
        },
      ),
      bottomNavigationBar: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStaticTexts.total,
                        style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '${AppStaticTexts.qr} ${state.cartTotal}',
                        style: AppTextStyles.extraLargeRobotoBold.copyWith(
                          color: AppColors.lightGreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: CommonBottomActionButton(
                    title: AppStaticTexts.checkOut,
                    onPressed: () {},
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
