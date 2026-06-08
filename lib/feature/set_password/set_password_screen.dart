import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/set_password/bloc/change_password_bloc.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/resources/common_widgets.dart/succes_dailog.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../resources/common_widgets.dart/common_error_alert.dart';
import '../../resources/dimens.dart';
import '../../route/route_constants.dart';
import 'widgets/set_password_section.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CommonAppbar(title: 'Set Password'),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Create new password",
              style: AppTextStyles.subHeaddingSemiBoldRoboto
                  .copyWith(color: AppColors.textDark),
            ),
            Text(
              "Your new password must be at least 8 Charaters",
              style: AppTextStyles.bodyTextInter
                  .copyWith(color: AppColors.textLight),
            ),
            const SizedBox(
              height: 15,
            ),
            const SetPasswordSection(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 1,
              color: AppColors.black.withValues(alpha: .25),
              offset: const Offset(0, 0))
        ]),
        child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
          listener: (context, state) {
            if (state.isPasswordChangingFailed &&
                !state.isPasswordChangingSucces) {
              showGeneralDialog(
                  context: context,
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Container(),
                  transitionDuration: const Duration(milliseconds: 300),
                  transitionBuilder: (context, animation, secondaryAnimation,
                          child) =>
                      Transform.scale(
                          scale: Curves.easeOut.transform(animation.value),
                          child:
                              CommonErrorAlert(content: state.error.message)));
            } else if (state.isPasswordChangingSucces &&
                !state.isPasswordChangingFailed) {
              showGeneralDialog(
                  context: context,
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Container(),
                  transitionDuration: const Duration(milliseconds: 300),
                  transitionBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          Transform.scale(
                              scale: Curves.easeOut.transform(animation.value),
                              child: SucessDialog(
                                title: 'Password changed Succesfully',
                                onPressed: () {
                                  Navigator.popUntil(
                                      context,
                                      (route) =>
                                          route.settings.name ==
                                          RouteConstants.mainScreen);
                                },
                              )));
            }
          },
          builder: (context, state) {
            return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: 0,
                    backgroundColor: AppColors.vilot,
                    foregroundColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15)),
                onPressed: () {
                  if (SetPasswordSection.setPasswordKey.currentState!
                          .validate() &&
                      !state.isPasswordChnaging) {
                    context.read<ChangePasswordBloc>().add(ChangePassword(
                        idUser: context.read<UserBloc>().state.user!.id,
                        mobileNumber:
                            context.read<UserBloc>().state.user!.mobileNumber,
                        newPassword:
                            SetPasswordSection.newPasswordController.text,
                        token:
                            context.read<UserBloc>().state.user!.accessToken));
                  }
                },
                child: state.isPasswordChnaging
                    ? const CircularProgressIndicator()
                    : Text(
                        "SAVE",
                        style: AppTextStyles.largeSemiBoldRoboto
                            .copyWith(color: AppColors.white),
                      ));
          },
        ),
      ),
    );
  }
}
