import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

import 'member_selection_tile.dart';

class MemberSelectionSection extends StatefulWidget {
  const MemberSelectionSection({super.key});

  @override
  State<MemberSelectionSection> createState() => _MemberSelectionSectionState();
}

class _MemberSelectionSectionState extends State<MemberSelectionSection> {
  final ValueNotifier<bool> _isExpandedNotifier = ValueNotifier(false);

  @override
  void dispose() {
    _isExpandedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.lang.appointmentFor,
                      style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const Gap(4),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        final memberCount = state.user?.members.length ?? 0;
                        return Text(
                          memberCount == 0
                              ? context.lang.noMembersAvailableToProceed
                              : context.lang.selectMemberOrAddNew,
                          style: AppTextStyles.bodyTextRoboto.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              IconButton.filled(
                onPressed: () {
                  InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
                  context.router.push(AddMemberRoute());
                },
                icon: const Icon(Icons.add_rounded),
                tooltip: context.lang.addMember,
              ),
            ],
          ),
          const Gap(16),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              final members = state.user?.members ?? [];
              if (members.isEmpty) return const SizedBox.shrink();

              return ValueListenableBuilder<bool>(
                valueListenable: _isExpandedNotifier,
                builder: (context, isExpanded, child) {
                  final visibleMembers = (isExpanded || members.length <= 3)
                      ? members
                      : members.take(3).toList();

                  return Column(
                    children: [
                      ValueListenableBuilder(
                        valueListenable:
                            BookAppointmentScreenHelpers.selectedMemberNotifier,
                        builder: (context, selectedMember, child) =>
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: visibleMembers.length,
                              separatorBuilder: (context, index) =>
                                  const Gap(12),
                              itemBuilder: (context, index) =>
                                  MemberSelectionTile(
                                    isSelected:
                                        selectedMember == visibleMembers[index],
                                    member: visibleMembers[index],
                                  ),
                            ),
                      ),
                      if (members.length > 3) ...[
                        const Gap(8),
                        Center(
                          child: TextButton.icon(
                            onPressed: () => _isExpandedNotifier.value =
                                !_isExpandedNotifier.value,
                            style: TextButton.styleFrom(
                              foregroundColor: colorScheme.primary,
                            ),
                            icon: Icon(
                              isExpanded
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down_rounded,
                            ),
                            label: Text(
                              isExpanded
                                  ? context.lang.showLess
                                  : context.lang.showMore,
                              style: AppTextStyles.bodyTextBoldRoboto.copyWith(
                                color: colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  );
                },
              );
            },
          ),
          const Gap(12),
        ],
      ),
    );
  }
}
