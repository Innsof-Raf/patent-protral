import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_network_image.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/lab/domain/entities/item.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class LabGridItemTile extends StatelessWidget {
  final Item item;
  const LabGridItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () => context.router.push(LabItemDetailRoute(idItem: item.idItem)),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: theme.dividerColor.withValues(alpha: 0.1),
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColorExtraLight,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                          '${ConstantUrls.packageImageUrl}/${item.idItem}/${item.itemImg}',
                      placeholder: CommonNetworkImage.placeholder,
                      errorWidget: CommonNetworkImage.errorWidget,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  PositionedDirectional(
                    top: 8,
                    end: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${context.lang.qar} ${item.itemPrice.toString().localize(context.currentLang)}',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.itemNmae.toTitleCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const Gap(4),
                    Expanded(
                      child: Text(
                        item.itemShortDesc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.textTheme.bodySmall?.color?.withValues(
                            alpha: 0.7,
                          ),
                        ),
                      ),
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        Expanded(
                          child: item.isChangingCartStatus
                              ? const Center(
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                )
                              : _ActionButton(
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
                                  isAdded: item.isCart,
                                  icon: item.isCart
                                      ? Assets.icons.cartIconWhite.path
                                      : Assets.icons.cartIconBlack.path,
                                  label: item.isCart
                                      ? context.lang.added
                                      : context.lang.add,
                                ),
                        ),
                        const Gap(8),
                        _CircleIconButton(
                          icon: Icons.arrow_forward_ios,
                          onPressed: () {
                            context.router.push(
                              LabItemDetailRoute(idItem: item.idItem),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isAdded;
  final String icon;
  final String label;

  const _ActionButton({
    required this.onPressed,
    required this.isAdded,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isAdded
            ? AppColors.primaryCyan
            : theme.colorScheme.surface,
        foregroundColor: isAdded
            ? AppColors.white
            : theme.colorScheme.onSurface,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isAdded ? AppColors.transparent : theme.dividerColor,
          ),
        ),
        minimumSize: const Size(0, 36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 14,
            width: 14,
            colorFilter: ColorFilter.mode(
              isAdded
                  ? AppColors.white
                  : theme.iconTheme.color ?? AppColors.black,
              BlendMode.srcIn,
            ),
          ),
          const Gap(4),
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: isAdded ? AppColors.white : theme.colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CircleIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: theme.dividerColor),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 12),
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(),
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
