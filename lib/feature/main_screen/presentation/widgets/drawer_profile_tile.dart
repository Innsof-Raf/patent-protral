import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class DrawerProfileTile extends StatelessWidget {
  const DrawerProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Row(
          children: [
            const SizedBox(width: 32),
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(width: 2, color: AppColors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.images.memberDefaultProfileImage.path,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -7,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        Assets.icons.femaleGenderIcon.path,
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Anzil Alphones",
                      style: AppTextStyles.subHeaddingSemiBoldRoboto.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "Age : 32  | National ID : 08923739 ",
                      style: AppTextStyles.bodySmallInterNormal.copyWith(
                        color: AppColors.borderColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "anzilalphonse@gmail.com",
                      style: AppTextStyles.bodyTextInterSemibold.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
