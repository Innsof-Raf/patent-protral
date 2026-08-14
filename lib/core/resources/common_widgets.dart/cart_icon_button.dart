import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';

class CartIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;

  const CartIconButton({super.key, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        final cartCount = state.cart.length;
        final effectiveColor = color ?? theme.colorScheme.onSurface;

        return IconButton(
          tooltip: context.lang.myCart,
          onPressed:
              onPressed ??
              () {
                context.router.push(const CartRoute());
              },
          style: IconButton.styleFrom(
            backgroundColor: theme.colorScheme.surfaceContainerHighest
                .withValues(alpha: 0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          icon: Badge(
            isLabelVisible: cartCount > 0,
            label: Text('$cartCount'),
            backgroundColor: theme.colorScheme.error,
            child: Icon(
              Icons.shopping_cart_rounded,
              size: 20,
              color: effectiveColor,
            ),
          ),
        );
      },
    );
  }
}
