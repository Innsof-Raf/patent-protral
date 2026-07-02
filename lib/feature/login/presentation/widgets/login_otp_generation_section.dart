import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_alert.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_form_helpers.dart';
import 'package:patient_portal/feature/login/presentation/helpers/login_screen_helpers.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_form_field.dart';
import 'package:patient_portal/feature/login/presentation/widgets/login_terms_row.dart';
import 'package:smart_auth/smart_auth.dart';

class LoginOtpGenerationSection extends StatefulWidget {
  const LoginOtpGenerationSection({super.key});

  @override
  State<LoginOtpGenerationSection> createState() =>
      _LoginOtpGenerationSectionState();
}

class _LoginOtpGenerationSectionState extends State<LoginOtpGenerationSection> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _mobileNumberController;
  final ValueNotifier<bool> _isAgreed = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _mobileNumberController = TextEditingController();
    _getAppSignature();
  }

  Future<void> _getAppSignature() async {
    final smartAuth = SmartAuth.instance;
    final signature = await smartAuth.getAppSignature();
    debugPrint('App Signature: $signature');
  }

  @override
  void dispose() {
    _mobileNumberController.dispose();
    _isAgreed.dispose();
    super.dispose();
  }

  void _generateOtp(BuildContext context, OtpGenerationState state) {
    if (_formKey.currentState!.validate() &&
        !state.isOtpGenerating &&
        _isAgreed.value) {
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
                      child: CommonErrorAlert(
                        content: ConstantMessages.translate(
                          context,
                          state.error.message,
                        ),
                      ),
                    ),
          );
        } else if (state.isOtpGenerationSuccess &&
            state.isOtpGenerationFailed == false &&
            LoginScreenHelpers.loginSectionNotifier.value == 0) {
          LoginScreenHelpers.timerNotifier.value = 30;
          LoginScreenHelpers.loginSectionNotifier.value = 1;
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginFormField(
                controller: _mobileNumberController,
                label: context.lang.mobileNumberLabel,
                prefixText: context.lang.qatarCountryCode,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.send,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(8),
                ],
                validator: (value) =>
                    LoginScreenFormHelpers.validateMobileNumber(context, value),
                onFieldSubmitted: (_) => _generateOtp(context, state),
              ),
              const Gap(16),
              LoginTermsRow(onChanged: (value) => _isAgreed.value = value),
              const Gap(32),
              ValueListenableBuilder<bool>(
                valueListenable: _isAgreed,
                builder: (context, agreed, _) => ActiveButton(
                  isLoading: state.isOtpGenerating,
                  onPressed: agreed ? () => _generateOtp(context, state) : null,
                  child: Text(context.lang.sendOtpTooltip),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
