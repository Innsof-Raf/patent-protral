import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/success_dialog.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/resources/urls.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/helpers/edit_profile_detail_screen_helpers.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_profile_details_section.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/widgets/edit_user_profile_image_section.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'EditProfileDetailsRoute')
class EditProfileDetailsScreen extends StatefulWidget {
  const EditProfileDetailsScreen({super.key});

  @override
  State<EditProfileDetailsScreen> createState() =>
      _EditProfileDetailsScreenState();
}

class _EditProfileDetailsScreenState extends State<EditProfileDetailsScreen> {
  @override
  void initState() {
    super.initState();
    final user = context.read<UserBloc>().state.user;
    EditProfileDetailsSection.initializeFromUser(context, user);
    EditProfileDetailScreenHelpers.profileImage.value = null;
    context.read<UserBloc>().add(const ChangeMemberAddingSateToInitial());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final user = context.watch<UserBloc>().state.user;
    final profileImageUrl = _profileImageUrl(user);

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: theme.colorScheme.surface,
      appBar: CommonAppbar(title: context.lang.profileDetails),
      body: BlocListener<UserBloc, UserState>(
        listenWhen: (previous, current) =>
            previous.isMemberAddingFailed != current.isMemberAddingFailed ||
            previous.isMemberAddingSucess != current.isMemberAddingSucess,
        listener: (context, state) {
          if (state.isMemberAddingFailed) {
            showDialog(
              context: context,
              builder: (context) => CommonErrorAlert(
                content:
                    '${context.lang.profileUpdateFailed}\n${ConstantMessages.translate(context, state.error.message)}',
              ),
            ).then((_) {
              if (context.mounted) {
                context.read<UserBloc>().add(
                  const ChangeMemberAddingSateToInitial(),
                );
              }
            });
          }

          if (state.isMemberAddingSucess) {
            showDialog(
              context: context,
              builder: (context) => SuccessDialog(
                title: context.lang.profileUpdatedSuccessfully,
                onPressed: () {
                  Navigator.pop(context);
                  context.read<UserBloc>().add(
                    const ChangeMemberAddingSateToInitial(),
                  );
                  context.router.maybePop();
                },
              ),
            );
          }
        },
        child: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
              sliver: SliverToBoxAdapter(
                child: _EditProfileIntroCard(theme: theme),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              sliver: SliverToBoxAdapter(
                child: EditUserProfileImageSection(image: profileImageUrl),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 112),
              sliver: SliverToBoxAdapter(child: EditProfileDetailsSection()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return ActiveButton(
              width: double.infinity,
              height: 52,
              borderRadius: 18,
              isLoading: state.isMemberAdding,
              onPressed: () {
                EditProfileDetailScreenHelpers.saveProfile(context: context);
              },
              child: Text(context.lang.saveChanges),
            );
          },
        ),
      ),
    );
  }

  String? _profileImageUrl(User? user) {
    final member = _primaryMember(user);
    final image = member?.profileImage;
    if (member == null || image == null || image.isEmpty) return null;
    return '${ConstantUrls.memberImageUrl}/${member.id}/$image';
  }

  Member? _primaryMember(User? user) {
    if (user == null || user.members.isEmpty) return null;

    for (final member in user.members) {
      if (member.id == user.idMember) return member;
    }

    return user.members.first;
  }
}

class _EditProfileIntroCard extends StatelessWidget {
  const _EditProfileIntroCard({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: .22),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: .55),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.lang.editYourProfile,
            style: AppTextStyles.extraLargeRobotoBold.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
              height: 1.08,
            ),
          ),
          const Gap(8),
          Text(
            context.lang.reviewEssentialsSubtitle,
            style: AppTextStyles.largeRobotoNormal.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
