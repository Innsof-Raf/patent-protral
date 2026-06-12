import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class MemberScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const MemberScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.white,
      elevation: 1,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: const Text('Members', style: AppTextStyles.largeSemiBoldRoboto),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            final membersIdList = context
                .read<UserBloc>()
                .state
                .user!
                .members
                .map((m) => m.id)
                .toList();
            context.read<DeleteMemberBloc>().add(
              SelectAllMembers(membersIdList: membersIdList),
            );
          },
          child: Text(
            'Select All',
            style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
              color: AppColors.vilot,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55.0);
}
