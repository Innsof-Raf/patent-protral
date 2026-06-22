import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class CartItemTile extends StatelessWidget {
  final Item item;
  const CartItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.borderColor,
        padding: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: const BorderSide(color: AppColors.borderColor, width: .5),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl:
                    '${ConstantUrls.packageImageUrl}/${item.idItem}/${item.itemImg}',
                errorWidget: (context, url, error) {
                  return Image.asset(
                    Assets.images.imageLoadingFailedImage.path,
                  );
                },
                fadeInDuration: const Duration(seconds: 0),
                fadeOutDuration: const Duration(seconds: 0),
                progressIndicatorBuilder: (context, url, progress) {
                  return const Center(child: CircularProgressIndicator());
                },
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  item.itemNmae,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  item.itemShortDesc,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${item.itemPrice}',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                item.isChangingCartStatus
                    ? const SizedBox(
                        height: 10,
                        width: 10,
                        child: CircularProgressIndicator(),
                      )
                    : OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          side: const BorderSide(
                            color: AppColors.borderColor,
                            width: .5,
                          ),
                          elevation: 0,
                          padding: const EdgeInsets.all(6),
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          context.read<ItemsBloc>().add(
                            UpdateItemCartSatus(
                              idItem: item.idItem,
                              idUser: context.read<UserBloc>().state.user!.id,
                              token: context
                                  .read<UserBloc>()
                                  .state
                                  .user!
                                  .accessToken,
                            ),
                          );
                        },
                        child: Icon(
                          Icons.close,
                          color: theme.colorScheme.onSurface,
                          size: 10,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
