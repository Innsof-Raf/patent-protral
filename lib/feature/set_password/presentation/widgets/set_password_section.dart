import 'package:flutter/material.dart';
import 'package:patient_portal/feature/set_password/presentation/helpers/change_password_form_helpers.dart';
import 'package:patient_portal/feature/set_password/presentation/widgets/password_input_field.dart';

class SetPasswordSection extends StatelessWidget {
  const SetPasswordSection({
    required this.formKey,
    required this.newPasswordController,
    required this.confirmPasswordController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PasswordInputField(
            controller: newPasswordController,
            label: 'New Password',
            hintText: 'Enter your new password',
            textInputAction: TextInputAction.next,
            validator: (value) =>
                ChangePasswordFormHelpers.validatePassword(value),
          ),
          const SizedBox(height: 20),
          PasswordInputField(
            controller: confirmPasswordController,
            label: 'Confirm Password',
            hintText: 'Re-enter your new password',
            textInputAction: TextInputAction.done,
            validator: (value) =>
                ChangePasswordFormHelpers.validateConfirmPassword(
                  value,
                  newPasswordController.text,
                ),
          ),
        ],
      ),
    );
  }
}
