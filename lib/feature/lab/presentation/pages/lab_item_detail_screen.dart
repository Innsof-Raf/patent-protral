import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
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
    final theme = Theme.of(context);

    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        final int itemIndex = state.items.indexWhere(
          (element) => element.idItem == idItem,
        );

        final Item? selectedItem = itemIndex != -1
            ? state.items[itemIndex]
            : null;
        return Scaffold(
          appBar: const CommonAppbar(title: AppStaticTexts.laboratory),
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
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  AppStaticTexts.packageDescription,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'subtitle subtitle subttilte subtitlte jhwhdfjfjfji efujiejfij bfuhufujnj\njfjjjfjfjj\ndjfjigjigjijhfhfh',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
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
                      children: [
                        CircleAvatar(
                          radius: 4,
                          backgroundColor: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
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
                      foregroundColor: theme.colorScheme.primary,
                      backgroundColor: theme.colorScheme.surface,
                      elevation: 0,
                    ),
                    child: Text(
                      AppStaticTexts.viewCart,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
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
                      foregroundColor: theme.colorScheme.onPrimary,
                      backgroundColor: selectedItem != null
                          ? selectedItem.isChangingCartStatus
                                ? theme.colorScheme.surface
                                : theme.colorScheme.primary
                          : theme.colorScheme.primary,
                      elevation: 0,
                    ),
                    child: Text(
                      AppStaticTexts.addToCart,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.w700,
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
