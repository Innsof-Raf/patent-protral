import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/member_section.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/my_profile_section.dart';

@RoutePage(name: 'MyProfileRoute')
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<UserBloc>().add(const RefreshToken());
        },
        child: const CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 12),
              sliver: SliverToBoxAdapter(child: ProfileDetailsSection()),
            ),
            // SliverPadding(
            //   padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            //   sliver: SliverToBoxAdapter(child: QuickMenuSection()),
            // ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 112),
              sliver: SliverToBoxAdapter(child: MemberSection()),
            ),
          ],
        ),
      ),
    );
  }
}
