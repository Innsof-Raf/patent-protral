import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/helpers/reports_appbar_helpers.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class ReportsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReportsAppBar({super.key});

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
          return BlocBuilder<ReportsBloc, ReportsState>(
            builder: (context, state) {
              return PopupMenuButton<int>(
                initialValue: state.selectedMemberId,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                position: PopupMenuPosition.under,
                splashRadius: 0,
                padding: EdgeInsets.zero,
                onSelected: ((value) {
                  context.read<ReportsBloc>().add(
                    GetReports(
                      params: ReportsParams.getReports(
                        memberId: value,
                        token: userState.user!.accessToken,
                        mobileNumber: userState.user!.mobileNumber,
                      ),
                    ),
                  );
                }),
                itemBuilder: (context) =>
                    ReportsAppbarHelpers.createPopupMenuItem(
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
      leading: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(0, 0),
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        child: SvgPicture.asset('assets/icons/drawer_icon.svg'),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.search, color: AppColors.textDark),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
