import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_widgets.dart/member_tile.dart';
import 'package:patient_portal/route/route_constants.dart';

class MemberSection extends StatelessWidget {
  const MemberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Members",
                      style: AppTextStyles.subHeaddingSemiBoldRoboto,
                    ),
                    Text(
                      state.user!.members.isEmpty
                          ? "No member found"
                          : "Found ${state.user!.members.length} members",
                      style: AppTextStyles.bodyTextRoboto,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    elevation: 0,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: AppColors.dividerGrayColor,
                    padding: const EdgeInsets.all(7),
                    minimumSize: const Size(0, 0),
                  ),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pushNamed(RouteConstants.membersScreen);
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                    color: AppColors.textDark,
                  ),
                ),
              ],
            ),
            Expanded(
              child: state.user!.members.isEmpty
                  ? const Center(
                      child: Text(
                        "No member found",
                        style: AppTextStyles.bodyTextRobotoSemiBold,
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(top: 15, bottom: 95),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: state.user!.members.length,
                      itemBuilder: (context, index) =>
                          MemberTile(member: state.user!.members[index]),
                    ),
            ),
          ],
        );
      },
    );
  }
}
