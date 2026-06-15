import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'LabItemDetailRoute')
class LabItemDetailScreen extends StatelessWidget {
  final int idItem;
  const LabItemDetailScreen({super.key, required this.idItem});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        final int itemIndex = state.items.indexWhere(
          (element) => element.idItem == idItem,
        );

        final Item? selectedItem = itemIndex != -1
            ? state.items[itemIndex]
            : null;
        return Scaffold(
          appBar: const CommonAppbar(title: 'Lab'),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => selectedItem != null
                      ? SizedBox(
                          height: constraints.maxWidth * .45,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: CachedNetworkImage(
                              imageUrl:
                                  '${ConstantUrls.packageImageUrl}/${selectedItem.idItem}/${selectedItem.itemImg}',
                              errorWidget: (context, url, error) {
                                return Image.asset(
                                  Assets.images.imageLoadingFailedImage.path,
                                );
                              },
                              fadeInDuration: const Duration(seconds: 0),
                              fadeOutDuration: const Duration(seconds: 0),
                              progressIndicatorBuilder:
                                  (context, url, progress) {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : Container(
                          height: constraints.maxWidth * .45,
                          width: double.infinity,
                          color: AppColors.dividerGrayColor,
                        ),
                ),
                Dimens.constHeight,
                Text(
                  selectedItem != null ? selectedItem.itemNmae : '',
                  style: AppTextStyles.bodyLargeRobotoSemiBold,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Package Description',
                  style: AppTextStyles.bodySmallRobotoNormal,
                ),
                const SizedBox(height: 4),
                Text(
                  'subtitle subtitle subttilte subtitlte jhwhdfjfjfji efujiejfij bfuhufujnj\njfjjjfjfjj\ndjfjigjigjijhfhfh',
                  style: AppTextStyles.bodySmallInterNormal.copyWith(
                    color: AppColors.textLight,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Dimens.constHeight,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.vilot,
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer',
                            style: AppTextStyles.bodyTextBoldRoboto,
                          ),
                        ),
                      ],
                    );
                  },
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
                    onPressed: () {},
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
                      backgroundColor: selectedItem != null
                          ? selectedItem.isChangingCartStatus
                                ? AppColors.white
                                : AppColors.vilot
                          : AppColors.vilot,
                      elevation: 0,
                    ),
                    child: Text(
                      'ADD TO CART',
                      style: AppTextStyles.largeBoldRoboto.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    onPressed: () {
                      if (selectedItem != null) {
                        context.read<ItemsBloc>().add(
                          UpdateItemCartSatus(
                            idItem: selectedItem.idItem,
                            idUser: context.read<UserBloc>().state.user!.id,
                            token: context
                                .read<UserBloc>()
                                .state
                                .user!
                                .accessToken,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
