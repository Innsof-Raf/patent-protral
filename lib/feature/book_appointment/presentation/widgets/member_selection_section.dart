import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

import 'member__selection_tile.dart';

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
                      'Appointment for',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        final memberCount = state.user?.members.length ?? 0;
                        return Text(
                          memberCount == 0
                              ? 'No members available. Add a member to proceed.'
                              : 'Select a member or add a new one.',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              IconButton.filledTonal(
                onPressed: () {
                  InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
                  context.router.push(AddMemberRoute());
                },
                icon: const Icon(Icons.add_rounded),
                tooltip: 'Add Member',
              ),
            ],
          ),
          const SizedBox(height: 16),
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
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) => MemberSelectionTile(
                    isSelected: selectedMember == members[index],
                    member: members[index],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 80), // Space for bottom bar
        ],
      ),
    );
  }
}
