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
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/params/set_password_params.dart';
import 'package:patient_portal/feature/set_password/presentation/bloc/change_password_bloc.dart';
import 'package:patient_portal/feature/set_password/presentation/widgets/set_password_section.dart';

@RoutePage(name: 'SetPasswordRoute')
class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: CommonAppbar(title: context.lang.setPassword),
      body: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) {
          if (state.isPasswordChangingFailed) {
            _showErrorDialog(context, state.error.message);
          } else if (state.isPasswordChangingSuccess) {
            _showSuccessDialog(context);
          }
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.lang.createNewPassword,
                style: AppTextStyles.extraLargeRobotoBold.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const Gap(8),
              Text(
                context.lang.createNewPasswordMessage,
                style: AppTextStyles.largeRobotoNormal.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const Gap(32),
              SetPasswordSection(
                formKey: _formKey,
                newPasswordController: _newPasswordController,
                confirmPasswordController: _confirmPasswordController,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomAction(theme, context),
    );
  }

  Widget _buildBottomAction(ThemeData theme, BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        builder: (context, state) {
          return ActiveButton(
            width: double.infinity,
            isLoading: state.isPasswordChanging,
            onPressed: _onSavePressed,
            child: Text(context.lang.savePassword),
          );
        },
      ),
    );
  }

  void _onSavePressed() {
    if (_formKey.currentState?.validate() ?? false) {
      final user = context.read<UserBloc>().state.user;
      if (user != null) {
        context.read<ChangePasswordBloc>().add(
          ChangePassword(
            params: SetPasswordParams.changePassword(
              idUser: user.id,
              mobileNumber: user.mobileNumber,
              newPassword: _newPasswordController.text,
              token: user.accessToken,
            ),
          ),
        );
      }
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => CommonErrorAlert(content: message),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SuccessDialog(
        title: context.lang.passwordChangedSuccessfully,
        onPressed: () {
          context.router.popUntilRouteWithName(MainRoute.name);
        },
      ),
    );
  }
}
