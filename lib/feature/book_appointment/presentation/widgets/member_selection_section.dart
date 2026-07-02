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

class MemberSelectionSection extends StatelessWidget {
  const MemberSelectionSection({super.key});

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

              return ValueListenableBuilder(
                valueListenable:
                    BookAppointmentScreenHelpers.selectedMemberNotifier,
                builder: (context, selectedMember, child) => ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: members.length,
                  separatorBuilder: (context, index) => const Gap(12),
                  itemBuilder: (context, index) => MemberSelectionTile(
                    isSelected: selectedMember == members[index],
                    member: members[index],
                  ),
                ),
              );
            },
          ),
          const Gap(12),
        ],
      ),
    );
  }
}
