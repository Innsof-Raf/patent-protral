import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/cart/presentation/widgets/cart_item_tile.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'CartRoute')
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppbar(title: context.lang.myCart),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          if (state.isItemsFetching ||
              (!state.isItemsFetchingSuccess && !state.isItemsFetchingFailed)) {
            return const CommonLoadingView();
          } else if (state.isItemsFetchingFailed) {
            return CommonErrorView(
              title: context.lang.unableToLoadTests,
              message: state.error.message,
              onRetry: () => context.read<ItemsBloc>().add(
                GetItems(
                  token: context.read<UserBloc>().state.user!.accessToken,
                ),
              ),
            );
          } else if (state.cart.isEmpty) {
            return CommonEmptyState(
              title: context.lang.yourCartIsEmpty,
              description: context.lang.yourCartIsEmptyMessage,
              icon: Icons.shopping_cart_outlined,
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: state.cart.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) =>
                CartItemTile(item: state.cart[index]),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          if (state.cart.isEmpty) return const SizedBox.shrink();

          return Container(
            padding: EdgeInsets.fromLTRB(
              16,
              16,
              16,
              MediaQuery.paddingOf(context).bottom + 16,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.shadowColorLight,
                  blurRadius: 10,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.lang.total,
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.textTheme.bodySmall?.color?.withValues(
                            alpha: 0.6,
                          ),
                        ),
                      ),
                      Text(
                        '${context.lang.qar} ${state.cartTotal}',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: ActiveButton(
                    onPressed: () {
                      // TODO: Implement Checkout
                    },
                    child: Text(context.lang.checkOut),
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
