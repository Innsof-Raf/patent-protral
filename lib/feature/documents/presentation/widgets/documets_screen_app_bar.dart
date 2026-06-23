import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/documents/presentation/helpers/documents_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class DocumentsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DocumentsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.white,
      elevation: 1,
      centerTitle: false,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: BlocBuilder<UserBloc, UserState>(
        builder: (userContext, userState) {
          return BlocBuilder<DocumentsBloc, DocumentsState>(
            builder: (context, state) {
              return PopupMenuButton<int>(
                initialValue: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                position: PopupMenuPosition.under,
                splashRadius: 0,
                padding: EdgeInsets.zero,
                onSelected: ((value) {
                  context.read<DocumentsBloc>().add(
                    GetDocuments(
                      memberId: value,
                      mobileNumber: context
                          .read<UserBloc>()
                          .state
                          .user!
                          .mobileNumber,
                      token: context.read<UserBloc>().state.user!.accessToken,
                    ),
                  );
                }),
                itemBuilder: (context) =>
                    DocumentsScreenHelpers.createPopupMenuItem(
                      userState.user!.members,
                      theme.textTheme,
                    ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                        height: 26,
                        width: 26,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) {
                          return Image.asset(
                            Assets.images.memberDefaultProfileImage.path,
                            height: 26,
                            width: 26,
                            fit: BoxFit.fill,
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      state.selectedMemberId == 0
                          ? 'All'
                          : userState.user!.members
                                .singleWhere(
                                  (element) =>
                                      element.id == state.selectedMemberId,
                                )
                                .name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.textDark,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
