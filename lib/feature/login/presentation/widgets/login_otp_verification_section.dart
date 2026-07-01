import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_text_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc/otp_verification_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:pinput/pinput.dart';

class LoginOtpVerificationSection extends StatefulWidget {
  const LoginOtpVerificationSection({super.key});

  @override
  State<LoginOtpVerificationSection> createState() =>
      _LoginOtpVerificationSectionState();
}

class _LoginOtpVerificationSectionState
    extends State<LoginOtpVerificationSection> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    LoginScreenHelpers.addTimer();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _verifyOtp(BuildContext context, OtpVerificationState state) {
    if (_otpController.length == 4 && !state.isVerifying) {
      final idOtp = context.read<OtpGenerationBloc>().state.idOtp;
      final mobileNumber = context.read<OtpGenerationBloc>().state.mobileNumber;
      context.read<OtpVerificationBloc>().add(
        VerifyOtp(
          idOtp: idOtp,
          mobileNumber: mobileNumber,
          otp: _otpController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
      listener: (context, state) {
        if (state.isVerifyingFailed && !state.isVerifyingSuccess) {
          showGeneralDialog(
            context: context,
            pageBuilder: (context, animation, secondaryAnimation) =>
                Container(),
            transitionDuration: const Duration(milliseconds: 300),
            transitionBuilder:
                (context, animation, secondaryAnimation, child) =>
                    Transform.scale(
                      scale: Curves.easeOut.transform(animation.value),
                      child: CommonErrorAlert(content: state.error.message),
                    ),
          );
        } else if (state.isVerifyingSuccess && !state.isVerifyingFailed) {
          context.read<UserBloc>().add(
            StoreUserDetails(
              params: ProfileParams.storeUserDetails(user: state.user!),
            ),
          );
          if (state.user!.members.isNotEmpty) {
            context.router.replaceAll([const MemberSelectionRoute()]);
          } else {
            context.router.replaceAll([const MainRoute()]);
          }
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStaticTexts.enterOtp,
              style: AppTextStyles.largeRobotoNormal.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const Gap(16),
            _OtpInput(
              controller: _otpController,
              onCompleted: (_) => _verifyOtp(context, state),
            ),
            const Gap(18),
            const _OtpSecondaryActions(),
            const Gap(32),
            ActiveButton(
              isLoading: state.isVerifying,
              onPressed: _otpController.text.length == 4
                  ? () => _verifyOtp(context, state)
                  : null,
              child: const Text(AppStaticTexts.verifyOtpTooltip),
            ),
          ],
        );
      },
    );
  }
}

class _OtpInput extends StatelessWidget {
  const _OtpInput({required this.controller, this.onCompleted});

  final TextEditingController controller;
  final ValueChanged<String>? onCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseDecoration = BoxDecoration(
      color: theme.colorScheme.surface,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
      ),
    );

    return Pinput(
      autofocus: true,
      controller: controller,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      onCompleted: onCompleted,
      isCursorAnimationEnabled: false,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      cursor: Container(
        height: 18,
        width: 1.4,
        color: theme.colorScheme.primary,
      ),
      defaultPinTheme: PinTheme(
        textStyle: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w700,
        ),
        decoration: baseDecoration,
        width: 64,
        height: 56,
      ),
      focusedPinTheme: PinTheme(
        textStyle: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w700,
        ),
        decoration: baseDecoration.copyWith(
          border: Border.all(color: theme.colorScheme.primary, width: 1.5),
        ),
        width: 64,
        height: 56,
      ),
    );
  }
}

class _OtpSecondaryActions extends StatelessWidget {
  const _OtpSecondaryActions();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final generationState = context.read<OtpGenerationBloc>().state;

    return Wrap(
      spacing: 16,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ValueListenableBuilder<int>(
          valueListenable: LoginScreenHelpers.timerNotifier,
          builder: (context, value, _) {
            if (value != 0) {
              return Text(
                '${AppStaticTexts.resend} 00:$value',
                style: AppTextStyles.bodyTextRoboto.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              );
            }

            return BlocConsumer<OtpGenerationBloc, OtpGenerationState>(
              listener: (context, state) {
                if (state.isOtpResentingSucess && !state.isOtpResentingFailed) {
                  LoginScreenHelpers.timerNotifier.value = 30;
                  LoginScreenHelpers.addTimer();
                }
              },
              builder: (context, state) {
                return _TextAction(
                  label: state.isResenting
                      ? AppStaticTexts.resending
                      : AppStaticTexts.resend,
                  onPressed: state.isResenting
                      ? null
                      : () {
                          context.read<OtpGenerationBloc>().add(
                            const ResentOtp(),
                          );
                        },
                );
              },
            );
          },
        ),
        if (generationState.showPasswordSection)
          _TextAction(
            label: AppStaticTexts.loginWithPassword,
            onPressed: () {
              if (!context.read<OtpVerificationBloc>().state.isVerifying) {
                LoginScreenHelpers.loginSectionNotifier.value = 2;
              }
            },
          ),
      ],
    );
  }
}

class _TextAction extends StatelessWidget {
  const _TextAction({required this.label, required this.onPressed});

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ActiveTextButton(
      onPressed: onPressed,
      foregroundColor: onPressed == null
          ? theme.colorScheme.onSurfaceVariant
          : theme.colorScheme.primary,
      style: AppTextStyles.bodyTextRoboto.copyWith(
        fontWeight: FontWeight.w700,
        decoration: onPressed == null ? null : TextDecoration.underline,
        decorationColor: theme.colorScheme.primary,
      ),
      child: Text(label),
    );
  }
}
