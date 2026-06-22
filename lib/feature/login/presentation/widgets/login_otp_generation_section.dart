import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_form_helpers.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_action_button.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_form_field.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_terms_row.dart';

class LoginOtpGenerationSection extends StatefulWidget {
  const LoginOtpGenerationSection({super.key});

  @override
  State<LoginOtpGenerationSection> createState() =>
      _LoginOtpGenerationSectionState();
}

class _LoginOtpGenerationSectionState extends State<LoginOtpGenerationSection> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _mobileNumberController;

  @override
  void initState() {
    super.initState();
    _mobileNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _mobileNumberController.dispose();
    super.dispose();
  }

  void _generateOtp(BuildContext context, OtpGenerationState state) {
    if (_formKey.currentState!.validate() && !state.isOtpGenerating) {
      context.read<OtpGenerationBloc>().add(
        GenerateOtp(mobileNumber: _mobileNumberController.text),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: LoginFormField(
                      controller: _mobileNumberController,
                      label: AppStaticTexts.mobileNumberLabel,
                      prefixText: '+974 ',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.send,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(8),
                      ],
                      validator: LoginScreenFormHelpers.validateMobileNumber,
                      onFieldSubmitted: (_) => _generateOtp(context, state),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: LoginActionButton(
                      icon: Icons.arrow_forward_rounded,
                      tooltip: AppStaticTexts.sendOtpTooltip,
                      isLoading: state.isOtpGenerating,
                      onPressed: () => _generateOtp(context, state),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const LoginTermsRow(),
            ],
          ),
        );
      },
    );
  }
}
