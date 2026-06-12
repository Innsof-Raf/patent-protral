import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc/otp_verification_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class LoginOtpVerificationSection extends StatefulWidget {
  const LoginOtpVerificationSection({super.key});

  @override
  State<LoginOtpVerificationSection> createState() =>
      _LoginOtpVerificationSectionState();
}

class _LoginOtpVerificationSectionState
    extends State<LoginOtpVerificationSection> {
  final TextEditingController otpController = TextEditingController();

  @override
  void initState() {
    super.initState();
    LoginScreenHelpers.addTimer();
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Enter OTP', style: AppTextStyles.bodyTextRoboto),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) => Pinput(
                    autofocus: true,
                    controller: otpController,
                    mainAxisAlignment: MainAxisAlignment.start,
                    isCursorAnimationEnabled: false,
                    onCompleted: ((value) {}),
                    cursor: Container(
                      height: 15,
                      width: 1,
                      color: AppColors.vilot,
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    defaultPinTheme: PinTheme(
                      textStyle: AppTextStyles.textFormFieldStyle,
                      margin: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * .01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: .5,
                          color: AppColors.textFormFIeldBagroundColor,
                        ),
                      ),
                      width:
                          (constraints.maxWidth / 4) -
                          (constraints.maxWidth * .065),
                      height: 45,
                    ),
                  ),
                ),
              ),
              LoginScreenHelpers.constWidtht20,
              BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
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
                  return state.isVerifying
                      ? Image.asset(
                          Assets.gifImages.ripple02.path,
                          width: 70,
                          fit: BoxFit.contain,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: AppColors.vilot,
                              shape: const CircleBorder(),
                            ),
                            onPressed: () {
                              if (otpController.length == 4) {
                                final String idOtp = context
                                    .read<OtpGenerationBloc>()
                                    .state
                                    .idOtp;
                                final mobileNumber = context
                                    .read<OtpGenerationBloc>()
                                    .state
                                    .mobileNumber;
                                context.read<OtpVerificationBloc>().add(
                                  VerifyOtp(
                                    idOtp: idOtp,
                                    mobileNumber: mobileNumber,
                                    otp: otpController.text,
                                  ),
                                );
                              }
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.white,
                            ),
                          ),
                        );
                },
              ),
            ],
          ),
          LoginScreenHelpers.constHeiht20,
          Row(
            children: [
              ValueListenableBuilder(
                valueListenable: LoginScreenHelpers.timerNotifer,
                builder: (context, value, _) => value == 0
                    ? BlocConsumer<OtpGenerationBloc, OtpGenerationState>(
                        listener: (context, state) {
                          if (state.isOtpResentingFailed &&
                              !state.isOtpResentingSucess) {
                          } else if (state.isOtpResentingSucess &&
                              !state.isOtpResentingFailed) {
                            LoginScreenHelpers.timerNotifer.value = 30;
                            LoginScreenHelpers.addTimer();
                          }
                        },
                        builder: (context, state) {
                          return TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {
                              if (!state.isResenting) {
                                context.read<OtpGenerationBloc>().add(
                                  const ResentOtp(),
                                );
                              }
                            },
                            child: state.isResenting
                                ? const CircularProgressIndicator()
                                : Text(
                                    'RESEND',
                                    style: AppTextStyles.bodyTextInter.copyWith(
                                      color: AppColors.textDark,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                          );
                        },
                      )
                    : Text(
                        'Resend 00:$value',
                        style: AppTextStyles.bodyTextInter.copyWith(
                          color: AppColors.textDark,
                        ),
                      ),
              ),
              const SizedBox(width: 10),
              context.read<OtpGenerationBloc>().state.showPasswordSection
                  ? TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        if (!context
                            .read<OtpVerificationBloc>()
                            .state
                            .isVerifying) {
                          LoginScreenHelpers.loginSectionNotifer.value = 2;
                        }
                      },
                      child: Text(
                        'Login with password',
                        style: AppTextStyles.bodyTextInter.copyWith(
                          color: AppColors.textDark,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
