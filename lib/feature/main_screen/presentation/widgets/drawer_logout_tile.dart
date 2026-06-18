import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class LogOutTile extends StatelessWidget {
  const LogOutTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: theme.colorScheme.onPrimary.withValues(alpha: .12),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Material(
            color: theme.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(18),
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                context.read<UserBloc>().add(const LogOut());
                LoginScreenHelpers.loginSectionNotifer.value = 0;
                context.router.replaceAll([const LoginRoute()]);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.logOutIcon.path,
                      colorFilter: ColorFilter.mode(
                        theme.colorScheme.primary,
                        BlendMode.srcIn,
                      ),
                      width: 21,
                      height: 21,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      'Logout',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
