import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
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
            ).colorScheme.surfaceContainerHighest.withValues(alpha: .4),
            fixedSize: const Size.square(46),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.search_rounded, size: 24),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
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
                borderRadius: BorderRadius.circular(20),
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
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: .4,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: theme.colorScheme.outlineVariant.withValues(
                      alpha: 0.5,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 12, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.colorScheme.primary.withValues(
                              alpha: 0.2,
                            ),
                            width: 1.5,
                          ),
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                            height: 28,
                            width: 28,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) {
                              return Image.asset(
                                Assets.images.memberDefaultProfileImage.path,
                                height: 28,
                                width: 28,
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                      ),
                      const Gap(10),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 130),
                        child: Text(
                          selectedName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Gap(4),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: theme.colorScheme.primary,
                        size: 20,
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
