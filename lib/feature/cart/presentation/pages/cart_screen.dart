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
import 'package:patient_portal/core/resources/common_widgets.dart/success_dialog.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/cart/presentation/widgets/cart_item_tile.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'CartRoute')
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    final itemsBloc = context.read<ItemsBloc>();
    if (!itemsBloc.state.isItemsFetchingSuccess &&
        !itemsBloc.state.isItemsFetching) {
      final user = context.read<UserBloc>().state.user;
      if (user != null && user.accessToken.isNotEmpty) {
        itemsBloc.add(GetItems(token: user.accessToken));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CommonAppbar(
        title: context.lang.myCart,
        showCart: false,
      ),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          if (state.isItemsFetching) {
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
                      final itemsBloc = context.read<ItemsBloc>();
                      final router = context.router;

                      showGeneralDialog(
                        context: context,
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (_, animation, secondaryAnimation) =>
                            const SizedBox.shrink(),
                        transitionBuilder:
                            (dialogContext, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOutBack,
                            ),
                            child: SuccessDialog(
                              title: 'Order placed successfully!',
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                                itemsBloc.add(const ClearCart());
                                WidgetsBinding.instance.addPostFrameCallback((_) {
                                  router.popUntilRouteWithName(MainRoute.name);
                                });
                              },
                            ),
                          );
                        },
                      );
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
