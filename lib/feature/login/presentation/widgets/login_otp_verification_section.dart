import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc/otp_verification_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_action_button.dart';
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

  void _verifyOtp(BuildContext context) {
    if (_otpController.length == 4) {
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppStaticTexts.enterOtp,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, constraints) {
            final rowWidth = constraints.maxWidth.clamp(0.0, 340.0).toDouble();

            return SizedBox(
              width: rowWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _OtpInput(controller: _otpController)),
                  const SizedBox(width: 12),
                  BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
                    listener: (context, state) {
                      if (state.isVerifyingFailed &&
                          !state.isVerifyingSuccess) {
                        showGeneralDialog(
                          context: context,
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Container(),
                          transitionDuration: const Duration(milliseconds: 300),
                          transitionBuilder:
                              (context, animation, secondaryAnimation, child) =>
                                  Transform.scale(
                                    scale: Curves.easeOut.transform(
                                      animation.value,
                                    ),
                                    child: CommonErrorAlert(
                                      content: state.error.message,
                                    ),
                                  ),
                        );
                      } else if (state.isVerifyingSuccess &&
                          !state.isVerifyingFailed) {
                        context.read<UserBloc>().add(
                          StoreUserDetails(
                            params: ProfileParams.storeUserDetails(
                              user: state.user!,
                            ),
                          ),
                        );
                        context.router.replaceAll([const MainRoute()]);
                      }
                    },
                    builder: (context, state) {
                      return LoginActionButton(
                        icon: Icons.arrow_forward_rounded,
                        tooltip: AppStaticTexts.verifyOtpTooltip,
                        isLoading: state.isVerifying,
                        onPressed: () => _verifyOtp(context),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 18),
        const _OtpSecondaryActions(),
      ],
    );
  }
}

class _OtpInput extends StatelessWidget {
  const _OtpInput({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseDecoration = BoxDecoration(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: .34),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: theme.colorScheme.outlineVariant),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final fieldWidth = ((constraints.maxWidth - 24) / 4)
            .clamp(42.0, 56.0)
            .toDouble();

        return Pinput(
          autofocus: true,
          controller: controller,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          isCursorAnimationEnabled: false,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          cursor: Container(
            height: 18,
            width: 1.4,
            color: theme.colorScheme.primary,
          ),
          defaultPinTheme: PinTheme(
            textStyle: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w700,
            ),
            decoration: baseDecoration,
            width: fieldWidth,
            height: 52,
          ),
          focusedPinTheme: PinTheme(
            textStyle: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w700,
            ),
            decoration: baseDecoration.copyWith(
              border: Border.all(color: theme.colorScheme.primary, width: 1.4),
            ),
            width: fieldWidth,
            height: 52,
          ),
        );
      },
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
          valueListenable: LoginScreenHelpers.timerNotifer,
          builder: (context, value, _) {
            if (value != 0) {
              return Text(
                '${AppStaticTexts.resend} 00:$value',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              );
            }

            return BlocConsumer<OtpGenerationBloc, OtpGenerationState>(
              listener: (context, state) {
                if (state.isOtpResentingSucess && !state.isOtpResentingFailed) {
                  LoginScreenHelpers.timerNotifer.value = 30;
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
                LoginScreenHelpers.loginSectionNotifer.value = 2;
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

    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 32),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: theme.colorScheme.primary,
        disabledForegroundColor: theme.colorScheme.onSurfaceVariant,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: theme.textTheme.bodySmall?.copyWith(
          color: onPressed == null
              ? theme.colorScheme.onSurfaceVariant
              : theme.colorScheme.primary,
          fontWeight: FontWeight.w700,
          decoration: onPressed == null ? null : TextDecoration.underline,
          decorationColor: theme.colorScheme.primary,
        ),
      ),
    );
  }
}
