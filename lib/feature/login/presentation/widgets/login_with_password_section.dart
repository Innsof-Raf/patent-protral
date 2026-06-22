import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/bloc/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_action_button.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_form_field.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_terms_row.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class LoginWithPasswordSection extends StatefulWidget {
  const LoginWithPasswordSection({super.key});

  @override
  State<LoginWithPasswordSection> createState() =>
      _LoginWithPasswordSectionState();
}

class _LoginWithPasswordSectionState extends State<LoginWithPasswordSection> {
  final _passwordFormKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _login(BuildContext context, LoginWithPasswordState state) {
    if (_passwordFormKey.currentState!.validate() && !state.isLogingin) {
      context.read<LoginWithPasswordBloc>().add(
        LoginWithPassword(
          mobileNumber: context.read<OtpGenerationBloc>().state.mobileNumber,
          password: _passwordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _passwordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LoginFormField(
                  controller: _passwordController,
                  label: AppStaticTexts.passwordLabel,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  onFieldSubmitted: (_) {
                    final state = context.read<LoginWithPasswordBloc>().state;
                    _login(context, state);
                  },
                ),
              ),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.only(top: 3),
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
                          context.router.replaceAll([const MainRoute()]);
                        }
                      },
                      builder: (context, state) {
                        return LoginActionButton(
                          icon: Icons.login_rounded,
                          tooltip: AppStaticTexts.loginTooltip,
                          isLoading: state.isLogingin,
                          onPressed: () => _login(context, state),
                        );
                      },
                    ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const LoginTermsRow(),
        ],
      ),
    );
  }
}
