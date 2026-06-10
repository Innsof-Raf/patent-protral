import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/lab/data/models/item_model.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/widgets/lab_grid_item_tile.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class TsetsTabBarView extends StatelessWidget {
  const TsetsTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        if (state.isItemsFetching) {
          return LayoutBuilder(
            builder: (context, constraints) => Center(
              child: Image.asset(
                'assets/gif_images/Ripple-0 2.gif',
                width: constraints.maxWidth * .3,
              ),
            ),
          );
        } else if (state.isItemsFetchingFailed) {
          return Center(
            child: Text(
              state.error.message,
              style: AppTextStyles.largeRobotoNormal,
            ),
          );
        } else {
          List<ItemModel> tests = state.items
              .where((item) => item.itemType == 'SERV')
              .toList();
          if (tests.isEmpty) {
            return const Center(
              child: Text(
                'No tests available right now',
                style: AppTextStyles.largeRobotoNormal,
              ),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: tests.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .9,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) =>
                  LabGridItemTile(item: tests[index]),
            );
          }
        }
      },
    );
  }
}
