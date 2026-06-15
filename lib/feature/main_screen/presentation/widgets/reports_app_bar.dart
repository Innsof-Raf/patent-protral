import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/helpers/reports_appbar_helpers.dart';

class ReportsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReportsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MainShellAppBar(
      titleWidget: const _ReportsMemberSelector(),
      actions: [
        IconButton(
          tooltip: 'Search reports',
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest.withValues(alpha: .55),
            fixedSize: const Size.square(42),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.search_rounded, size: 21),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}

class _ReportsMemberSelector extends StatelessWidget {
  const _ReportsMemberSelector();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<UserBloc, UserState>(
      builder: (userContext, userState) {
        return BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            final selectedName = state.selectedMemberId == 0
                ? 'All reports'
                : userState.user!.members
                      .singleWhere(
                        (element) => element.id == state.selectedMemberId,
                      )
                      .name;

            return PopupMenuButton<int>(
              initialValue: state.selectedMemberId,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              position: PopupMenuPosition.under,
              padding: EdgeInsets.zero,
              onSelected: (value) {
                context.read<ReportsBloc>().add(
                  GetReports(
                    params: ReportsParams.getReports(
                      memberId: value,
                      token: userState.user!.accessToken,
                      mobileNumber: userState.user!.mobileNumber,
                    ),
                  ),
                );
              },
              itemBuilder: (context) =>
                  ReportsAppbarHelpers.createPopupMenuItem(
                    userState.user!.members,
                  ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: .55,
                  ),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: theme.colorScheme.outlineVariant),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 6, 10, 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              Assets.images.memberDefaultProfileImage.path,
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 150),
                        child: Text(
                          selectedName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
