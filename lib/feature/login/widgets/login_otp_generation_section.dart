import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/login/helpers/login_screen_form_helpers.dart';
import 'package:patient_portal/feature/login/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_error_alert.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginOtpGenerationSection extends StatefulWidget {
  const LoginOtpGenerationSection({super.key});

  @override
  State<LoginOtpGenerationSection> createState() =>
      _LoginOtpGenerationSectionState();
}

class _LoginOtpGenerationSectionState extends State<LoginOtpGenerationSection> {
  late TextEditingController mobileNumerController;

  @override
  void initState() {
    super.initState();
    mobileNumerController = TextEditingController();
  }

  @override
  void dispose() {
    mobileNumerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BlocConsumer<OtpGenerationBloc, OtpGenerationState>(
      listener: (context, state) {
        if (state.isOtpGenerationFailed &&
            state.isOtpGenerationSuccess == false) {
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
        } else if (state.isOtpGenerationSuccess &&
            state.isOtpGenerationFailed == false &&
            LoginScreenHelpers.loginSectionNotifer.value == 0) {
          LoginScreenHelpers.timerNotifer.value = 30;
          LoginScreenHelpers.loginSectionNotifer.value = 1;
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Enter your Mobile Number',
                style: AppTextStyles.bodyTextRoboto,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      cursorColor: AppColors.textFormFiledStyleColor,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(8),
                      ],
                      decoration: const InputDecoration(
                        prefixText: '+974 ',
                        prefixStyle: AppTextStyles.textFormFieldStyle,
                      ),
                      style: AppTextStyles.textFormFieldStyle,
                      onFieldSubmitted: (value) {
                        if (formKey.currentState!.validate() &&
                            state.isOtpGenerating == false) {
                          context.read<OtpGenerationBloc>().add(
                            GenerateOtp(mobileNumber: value),
                          );
                        }
                      },
                      controller: mobileNumerController,
                      validator: (value) =>
                          LoginScreenFormHelpers.validateMobileNumber(value),
                    ),
                  ),
                  state.isOtpGenerating
                      ? Image.asset(
                          'assets/gif_images/Ripple-0 2.gif',
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
                              if (formKey.currentState!.validate() &&
                                  !state.isOtpGenerating) {
                                context.read<OtpGenerationBloc>().add(
                                  GenerateOtp(
                                    mobileNumber: mobileNumerController.text,
                                  ),
                                );
                              }
                            },
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                ],
              ),
              LoginScreenHelpers.constHeiht20,
              Row(
                children: [
                  const Text(
                    'Continue by agree our ',
                    style: AppTextStyles.bodyTextInter,
                  ),
                  TextButton(
                    onPressed: () async {
                      if (!await launchUrl(
                        Uri.parse(
                          'https://www.alleviamedicalcenter.com/home/user_policy',
                        ),
                        mode: LaunchMode.inAppWebView,
                      )) {
                        throw 'Could not launch';
                      }
                    },
                    child: Text(
                      'Terms & Conditions',
                      style: AppTextStyles.bodyTextInter.copyWith(
                        color: AppColors.textDark,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
