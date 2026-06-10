import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/feature/lab/domain/entities/item_model.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/route_constants.dart';

class LabGridItemTile extends StatelessWidget {
  final ItemModel item;
  const LabGridItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          RouteConstants.labItemDetailScreen,
          arguments: {'id_item': item.idItem},
        );
      },
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
                    "${ConstantUrls.packageImageUrl}/${item.idItem}/${item.itemImg}",
                errorWidget: (context, url, error) {
                  return Image.asset(
                    'assets/images/image_loading_failed_image.png',
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
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodyLargeRobotoSemiBold,
                ),
                Text(
                  item.itemShortDesc,
                  style: AppTextStyles.bodyXSmallInterNormal,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'QAR ${item.itemPrice}',
                  style: AppTextStyles.bodyTextRobotoSemiBold,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    item.isChangingCartStatus
                        ? const SizedBox(
                            height: 10,
                            width: 10,
                            child: CircularProgressIndicator(),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: item.isCart
                                  ? AppColors.vilot
                                  : AppColors.white,
                              side: BorderSide(
                                color: item.isCart
                                    ? AppColors.vilot
                                    : AppColors.borderColor,
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
                                  idUser: context
                                      .read<UserBloc>()
                                      .state
                                      .user!
                                      .id,
                                  token: context
                                      .read<UserBloc>()
                                      .state
                                      .user!
                                      .accessToken,
                                ),
                              );
                            },
                            child: SvgPicture.asset(
                              item.isCart
                                  ? 'assets/icons/cart_icon_white.svg'
                                  : 'assets/icons/cart_icon_black.svg',
                              height: 10,
                              width: 10,
                            ),
                          ),
                    const SizedBox(width: 6),
                    OutlinedButton(
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
                        Navigator.of(context).pushNamed(
                          RouteConstants.labItemDetailScreen,
                          arguments: {'id_item': item.idItem},
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.textDark,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
