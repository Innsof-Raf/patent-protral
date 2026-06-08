import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/documents/helpers/documents_screen_helpers.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../profile/bloc/user_bloc.dart';
import '../bloc/documents_bloc.dart';

class DocumentsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DocumentsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
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
                    ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
                        height: 26,
                        width: 26,
                        fit: BoxFit.fill,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            'assets/images/member_default_profile_image.png',
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
                      style: AppTextStyles.largeSemiBoldRoboto,
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
