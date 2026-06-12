import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class MembersTile extends StatelessWidget {
  const MembersTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        context.router.push(const MembersRoute());
      },
      child: Container(
        padding: EdgeInsets.all(size.width < 600 ? 10 : 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.homeMemberTileBagroundImage.path,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(11.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Members',
                  style: AppTextStyles.bodyLargeRobotoSemiBold.copyWith(
                    fontSize: 13,
                    color: AppColors.textDark,
                  ),
                ),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: const Size(0, 0),
                    elevation: 0,
                    backgroundColor: AppColors.transparent,
                    shape: const CircleBorder(
                      side: BorderSide(width: .4, color: AppColors.textDark),
                    ),
                    padding: const EdgeInsets.all(4),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.textDark,
                    size: 10,
                  ),
                ),
              ],
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Text(
                  state.user == null || state.user!.members.isEmpty
                      ? '0 Found'
                      : '${state.user!.members.length} Found',
                  style: AppTextStyles.bodySmallRobotoNormal,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
