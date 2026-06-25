import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';

class ProfileDetailsSection extends StatelessWidget {
  const ProfileDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final user = state.user;

        if (user == null) return const SizedBox.shrink();

        final theme = Theme.of(context);
        final primaryMember = _primaryMember(user);
        final fullName = _fullName(user);

        final age = (primaryMember?.age.isNotEmpty ?? false)
            ? '${AppStaticTexts.age} ${primaryMember!.age}'
            : AppStaticTexts.ageNotProvided;
        final nationalId = (primaryMember?.nationalId.isNotEmpty ?? false)
            ? '${AppStaticTexts.nationalId} ${primaryMember!.nationalId}'
            : AppStaticTexts.idNotProvided;

        return ProfileSectionCard(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ProfileAvatar(name: fullName),
              const Gap(16),
              Text(
                fullName,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ),
              const Gap(4),
              Text(
                '$age  •  $nationalId',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.3,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    _ProfileInfoRow(
                      icon: Icons.mail_outline_rounded,
                      label: user.emailId.isNotEmpty
                          ? user.emailId
                          : AppStaticTexts.emailNotProvided,
                    ),
                    const Divider(height: 20, thickness: 0.5),
                    _ProfileInfoRow(
                      icon: Icons.call_outlined,
                      label: user.mobileNumber.isNotEmpty
                          ? user.mobileNumber
                          : AppStaticTexts.mobileNotProvided,
                    ),
                  ],
                ),
              ),
              const Gap(20),
              SizedBox(
                width: double.infinity,
                child: ActiveButton(
                  onPressed: () {
                    context.router.root.push(const EditProfileDetailsRoute());
                  },
                  height: 52,
                  icon: const Icon(Icons.edit_outlined, size: 18),
                  child: const Text(AppStaticTexts.editProfile),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _fullName(User user) {
    final name = '${user.firstName} ${user.lastName}'.trim();
    if (name.isNotEmpty) return name;
    return user.userName.isNotEmpty ? user.userName : AppStaticTexts.user;
  }

  Member? _primaryMember(User user) {
    if (user.members.isEmpty) return null;

    for (final member in user.members) {
      if (member.id == user.idMember) return member;
    }

    return user.members.first;
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final initial = name.trim().isEmpty ? '?' : name.trim()[0].toUpperCase();

    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Center(
        child: Text(
          initial,
          style: theme.textTheme.displaySmall?.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 20, color: theme.colorScheme.primary),
        ),
        const Gap(14),
        Expanded(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
