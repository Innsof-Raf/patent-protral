import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/feature_header.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/member_selection_tile.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'MemberSelectionRoute')
class MemberSelectionScreen extends StatelessWidget {
  const MemberSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: theme.colorScheme.surface,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        body: SafeArea(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              final members = state.user?.members ?? [];
              final selectedMember = state.selectedMember;

              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(24),
                      children: [
                        FeatureHeader(
                          title: AppStaticTexts.selectMemberToContinue,
                          subtitle: AppStaticTexts.pleaseChooseAMember,
                          badgeText: members.isEmpty
                              ? AppStaticTexts.noMembersAdded
                              : '${members.length} ${AppStaticTexts.membersLinked}',
                        ),
                        const Gap(24),
                        ...members.map(
                          (member) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: MemberSelectionTile(
                              member: member,
                              isSelected: selectedMember == member,
                              onTap: () {
                                context.read<UserBloc>().add(
                                  SelectMember(member: member),
                                );
                                context.router.replaceAll([const MainRoute()]);
                              },
                            ),
                          ),
                        ),
                        const Gap(8),
                        _AddMemberTile(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _AddMemberTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: () {
        InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
        context.router.push(AddMemberRoute());
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: colorScheme.primary,
            style: BorderStyle.solid,
            width: 1.5,
          ),
          color: colorScheme.primary.withValues(alpha: 0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_add_alt_1_rounded, color: colorScheme.primary),
            const Gap(12),
            Text(
              AppStaticTexts.addMember,
              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
