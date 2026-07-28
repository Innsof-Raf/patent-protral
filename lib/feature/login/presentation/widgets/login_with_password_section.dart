import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/injection_container.dart' as di;
import 'package:patient_portal/core/localization/bloc/language_bloc.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/services/analytics_service.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/login/presentation/bloc/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_form_helpers.dart';
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
  final ValueNotifier<bool> _isAgreed = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _passwordController.dispose();
    _isAgreed.dispose();
    super.dispose();
  }

  void _login(BuildContext context, LoginWithPasswordState state) {
    if (_passwordFormKey.currentState!.validate() &&
        !state.isLogingin &&
        _isAgreed.value) {
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
    return BlocConsumer<LoginWithPasswordBloc, LoginWithPasswordState>(
      listener: (context, state) {
        if (state.isLoginFailed && !state.isLoginSuccess) {
          showGeneralDialog(
            context: context,
            pageBuilder: (context, animation, secondaryAnimation) =>
                Container(),
            transitionDuration: const Duration(milliseconds: 300),
            transitionBuilder:
                (context, animation, secondaryAnimation, child) =>
                    Transform.scale(
                      scale: Curves.easeOut.transform(animation.value),
                      child: CommonErrorAlert(
                        content: ConstantMessages.translate(
                          context,
                          state.error.message,
                        ),
                      ),
                    ),
          );
        } else if (state.isLoginSuccess && !state.isLoginFailed) {
          di.sl<AnalyticsService>().logLogin(loginMethod: 'Username_Password');
          di.sl<AnalyticsService>().setUserId(state.user!.id.toString());
          di.sl<AnalyticsService>().setUserProperties(
            activeRole: 'Patient',
            isFamilyMember: false,
            preferredLanguage: context
                .read<LanguageBloc>()
                .state
                .locale
                .languageCode,
          );
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
        return Form(
          key: _passwordFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginFormField(
                controller: _passwordController,
                label: context.lang.passwordLabel,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                obscureText: true,
                validator: (value) =>
                    LoginScreenFormHelpers.validatePassword(context, value),
                onFieldSubmitted: (_) => _login(context, state),
              ),
              const Gap(16),
              LoginTermsRow(onChanged: (value) => _isAgreed.value = value),
              const Gap(32),
              ValueListenableBuilder<bool>(
                valueListenable: _isAgreed,
                builder: (context, agreed, _) {
                  return ActiveButton(
                    isLoading: state.isLogingin,
                    onPressed: agreed ? () => _login(context, state) : null,
                    child: Text(context.lang.loginTooltip),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
