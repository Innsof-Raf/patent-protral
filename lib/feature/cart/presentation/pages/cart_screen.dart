import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/cart/presentation/widgets/cart_item_tile.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppbar(title: 'My Cart'),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          return state.cart.isEmpty
              ? const Center(
                  child: Text(
                    'Your cart is empty',
                    style: AppTextStyles.largeRobotoNormal,
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
              color: AppColors.white,
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
                      const Text(
                        'Total',
                        style: AppTextStyles.bodyLargeSemiBoldTextInter,
                      ),
                      Text(
                        'QR ${state.cartTotal}',
                        style: AppTextStyles.subHeaddingSemiBoldRoboto.copyWith(
                          color: AppColors.lightGreen,
                        ),
                      ),
                    ],
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
          );
        },
      ),
    );
  }
}
