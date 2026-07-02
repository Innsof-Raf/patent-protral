import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
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
            label: context.lang.newPassword,
            hintText: context.lang.enterNewPasswordHint,
            textInputAction: TextInputAction.next,
            validator: (value) =>
                ChangePasswordFormHelpers.validatePassword(context, value),
          ),
          const Gap(20),
          PasswordInputField(
            controller: confirmPasswordController,
            label: context.lang.confirmPassword,
            hintText: context.lang.reEnterNewPasswordHint,
            textInputAction: TextInputAction.done,
            validator: (value) =>
                ChangePasswordFormHelpers.validateConfirmPassword(
                  context,
                  value,
                  newPasswordController.text,
                ),
          ),
        ],
      ),
    );
  }
}
