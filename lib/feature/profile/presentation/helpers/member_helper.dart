import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/member_selection_tile.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class MemberHelper {
  static void showMemberSelection({
    required BuildContext context,
    required String title,
    void Function(Member selectedMember)? onMemberSelected,
  }) {
    final theme = Theme.of(context);
    final userState = context.read<UserBloc>().state;
    final members = userState.user?.members ?? [];

    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24).copyWith(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(16),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ...members.map(
                      (member) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: MemberSelectionTile(
                          member: member,
                          isSelected: userState.selectedMember?.id == member.id,
                          onTap: () {
                            context.read<UserBloc>().add(
                              SelectMember(member: member),
                            );
                            Navigator.pop(bottomSheetContext);
                            if (onMemberSelected != null) {
                              onMemberSelected(member);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
