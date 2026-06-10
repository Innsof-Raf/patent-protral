import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/route/route_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWithPasswordSection extends StatelessWidget {
  const LoginWithPasswordSection(ValueKey<int> valueKey, {super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();
    TextEditingController passwordController = TextEditingController();
    return Form(
      key: passwordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Enter Pssword', style: AppTextStyles.bodyTextRoboto),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.name,
                  cursorColor: AppColors.textFormFiledStyleColor,
                  style: AppTextStyles.textFormFieldStyle,
                  onFieldSubmitted: (value) {
                    if (passwordFormKey.currentState!.validate()) {}
                  },
                  controller: passwordController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child:
                    BlocConsumer<LoginWithPasswordBloc, LoginWithPasswordState>(
                      listener: (context, state) {
                        if (state.isLoginFailed && !state.isLoginSucces) {
                          showGeneralDialog(
                            context: context,
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    Container(),
                            transitionDuration: const Duration(
                              milliseconds: 300,
                            ),
                            transitionBuilder:
                                (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) => Transform.scale(
                                  scale: Curves.easeOut.transform(
                                    animation.value,
                                  ),
                                  child: CommonErrorAlert(
                                    content: state.error.message,
                                  ),
                                ),
                          );
                        } else if (state.isLoginSucces &&
                            !state.isLoginFailed) {
                          context.read<UserBloc>().add(
                            StoreUserDetails(
                              params: ProfileParams.storeUserDetails(
                                user: state.user!,
                              ),
                            ),
                          );
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteConstants.mainScreen,
                            (route) => false,
                          );
                        }
                      },
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            backgroundColor: AppColors.vilot,
                            shape: const CircleBorder(),
                          ),
                          onPressed: () {
                            if (passwordFormKey.currentState!.validate() &&
                                !state.isLogingin) {
                              context.read<LoginWithPasswordBloc>().add(
                                LoginWithPassword(
                                  mobileNumber: context
                                      .read<OtpGenerationBloc>()
                                      .state
                                      .mobileNumber,
                                  password: passwordController.text,
                                ),
                              );
                            }
                          },
                          child: state.isLogingin
                              ? const CircularProgressIndicator()
                              : const Icon(Icons.login),
                        );
                      },
                    ),
              ),
            ],
          ),
          LoginScreenHelpers.constHeiht20,
          Row(
            children: [
              const Text(
                'Continue by agree our',
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
  }
}
