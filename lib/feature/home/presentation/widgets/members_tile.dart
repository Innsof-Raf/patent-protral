import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/home/presentation/widgets/home_quick_action_card.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class MembersTile extends StatelessWidget {
  const MembersTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final memberCount = state.user?.members.length ?? 0;

        return HomeQuickActionCard(
          title: AppStaticTexts.members,
          subtitle: memberCount == 1
              ? '1 ${AppStaticTexts.memberFound}'
              : '$memberCount ${AppStaticTexts.membersFound}',
          backgroundImage: Assets.images.homeMemberTileBackgroundImage.path,
          onTap: () {
            context.router.root.push(const MembersRoute());
          },
        );
      },
    );
  }
}
