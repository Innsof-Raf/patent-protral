import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
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
        if (state.isItemsFetching) {
          return const CommonLoadingView();
        } else if (state.isItemsFetchingFailed) {
          return CommonErrorView(
            title: 'Unable to load packages',
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
            return const Center(
              child: Text(
                'No packages available right now',
                style: AppTextStyles.largeRobotoNormal,
              ),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: packages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .73,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
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
