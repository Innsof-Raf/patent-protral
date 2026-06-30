import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/lab_grid_item_tile.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class PackagesTabBarView extends StatelessWidget {
  const PackagesTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        if (state.isItemsFetching ||
            (!state.isItemsFetchingSuccess && !state.isItemsFetchingFailed)) {
          return const CommonLoadingView();
        } else if (state.isItemsFetchingFailed) {
          return CommonErrorView(
            title: AppStaticTexts.unableToLoadPackages,
            message: state.error.message,
            onRetry: () => context.read<ItemsBloc>().add(
              GetItems(token: context.read<UserBloc>().state.user!.accessToken),
            ),
          );
        } else {
          final List<Item> packages = state.items
              .where((item) => item.itemType == 'pkg')
              .toList();
          if (packages.isEmpty) {
            return CommonEmptyState(
              title: AppStaticTexts.noPackagesAvailable,
              description: AppStaticTexts.noPackagesMessage,
              icon: Icons.inventory_2_outlined,
              actionLabel: AppStaticTexts.refresh,
              onAction: () => context.read<ItemsBloc>().add(
                GetItems(
                  token: context.read<UserBloc>().state.user!.accessToken,
                ),
              ),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: packages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) =>
                  LabGridItemTile(item: packages[index]),
            );
          }
        }
      },
    );
  }
}
