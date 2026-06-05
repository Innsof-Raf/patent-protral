import 'package:flutter/material.dart';
import 'package:patient_portal/feature/set_password/helpers/change_password_form_helpers.dart';
import '../../../resources/app_text_styles.dart';

class SetPasswordSection extends StatelessWidget {
  const SetPasswordSection({Key? key}) : super(key: key);
  static GlobalKey<FormState> setPasswordKey = GlobalKey<FormState>();
  static TextEditingController newPasswordController = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    newPasswordController.text = '';
    confirmPasswordController.text = '';
    return Form(
        key: setPasswordKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New Password',
              style: AppTextStyles.bodyTextRoboto,
            ),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              obscureText: true,
              enableInteractiveSelection: false,
              textInputAction: TextInputAction.next,
              controller: newPasswordController,
              obscuringCharacter: '•',
              validator: (value) =>
                  ChangePasswordFormHelpers.validatePassword(value),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Confirm Password',
              style: AppTextStyles.bodyTextRoboto,
            ),
            const SizedBox(
              height: 4,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              obscureText: true,
              enableInteractiveSelection: false,
              obscuringCharacter: '•',
              textInputAction: TextInputAction.next,
              controller: confirmPasswordController,
              validator: (value) =>
                  ChangePasswordFormHelpers.validateConfirmPassword(value),
            ),
            const SizedBox(
              height: 55,
            )
          ],
        ));
  }
}
