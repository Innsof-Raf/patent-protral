import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/add_member/blocs/inurance_bloc/insurance_bloc.dart';
import 'package:patient_portal/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/resources/constant_messages.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../common_helpers/inurance_validation_helpers.dart';

class InsuranceFormSection extends StatelessWidget {
  final int? idInsurance;
  final String? insuranceName;
  final String? memberNumber;
  final DateTime? memberInsuranvceExpireDate;
  static DateTime? expireDate;

  static GlobalKey<FormState> insuranceFormKey = GlobalKey<FormState>();
  static GlobalKey<FormState> insuranceNameFormKey = GlobalKey<FormState>();
  static TextEditingController memberNumberController = TextEditingController();
  static TextEditingController expireDateController = TextEditingController();
  static TextEditingController insuranceNameController =
      TextEditingController();
  const InsuranceFormSection({
    Key? key,
    this.idInsurance,
    this.insuranceName,
    this.memberNumber,
    this.memberInsuranvceExpireDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (idInsurance != null) {
      InsuranceHelpers.selectedInsuranceNotifer.value = idInsurance;
      expireDate = memberInsuranvceExpireDate;
      memberNumberController.text = memberNumber!;
      expireDateController.text =
          DateFormat('dd-MM-yyyy').format(memberInsuranvceExpireDate!);
    } else {
      expireDateController.text = '';
      memberNumberController.text = '';
      expireDate = null;
      InsuranceHelpers.selectedInsuranceNotifer.value = null;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InsuranceBloc>().add(FeatchInsurance(
          token: context.read<UserBloc>().state.user!.accessToken));
    });

    return BlocConsumer<InsuranceBloc, InsuranceState>(
      listener: (context, state) {
        if (state.isInsuranceFecthingFailed &&
            !state.isInsuranceFechingSuccess) {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
              context: context,
              contant:
                  '${state.error.message} \n Can\'t add insurance right now');
        }
        if (state.isInsuranceFechingSuccess &&
            !state.isInsuranceFecthingFailed &&
            state.insurances.isEmpty) {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
              context: context,
              contant:
                  '${ConstantMessages.serverFailureMessage} \n Can\'t add insurance right now');
        }
      },
      builder: (context, state) {
        return state.isFetchingInsurances
            ? Column(mainAxisSize: MainAxisSize.min, children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/gif_images/Ripple-0 2.gif',
                  width: 100,
                )
              ])
            : Form(
                key: insuranceFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      focusColor: AppColors.white,
                      isExpanded: true,
                      value: idInsurance,
                      items: state.insurances
                          .map((insurance) =>
                              InsuranceHelpers.createDropDownItem(
                                  insurance: insurance))
                          .toList(),
                      validator: (value) =>
                          InsuranceValidationHelpers.validateInsuranceType(
                              value: value),
                      decoration: const InputDecoration(
                        labelText: 'Insurence',
                      ),
                      onChanged: (value) {
                        InsuranceHelpers.selectedInsuranceNotifer.value = value;
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable:
                          InsuranceHelpers.selectedInsuranceNotifer,
                      builder: (context, value, child) {
                        if (insuranceName != null) {
                          insuranceNameController.text = insuranceName!;
                        } else {
                          insuranceNameController.text = '';
                        }
                        return value == 0
                            ? Form(
                                key: insuranceNameFormKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: insuranceNameController,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[A-Za-z ]')),
                                        LengthLimitingTextInputFormatter(20)
                                      ],
                                      validator: (value) =>
                                          InsuranceValidationHelpers
                                              .validateInsuranceName(
                                                  value: value),
                                      textCapitalization:
                                          TextCapitalization.characters,
                                      decoration: const InputDecoration(
                                          labelText: 'Insurance Name'),
                                      style: AppTextStyles.textFormFieldStyle,
                                      cursorColor:
                                          AppColors.textFormFiledStyleColor,
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) =>
                          InsuranceValidationHelpers.validateMemberNumber(
                              value: value),
                      controller: memberNumberController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(20),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[A-Za-z0-9]'))
                      ],
                      decoration:
                          const InputDecoration(labelText: 'Member Number'),
                      style: AppTextStyles.textFormFieldStyle,
                      cursorColor: AppColors.textFormFiledStyleColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      validator: (value) =>
                          InsuranceValidationHelpers.expireDateValidator(
                              value: value),
                      decoration:
                          const InputDecoration(labelText: 'Expire date'),
                      style: AppTextStyles.textFormFieldStyle,
                      controller: expireDateController,
                      onTap: () async {
                        DateTime? selectedDate =
                            await InsuranceHelpers.getExpireDate(
                                initialDate: expireDate ??
                                    DateTime.now().add(const Duration(days: 1)),
                                context: context);
                        if (selectedDate != null) {
                          expireDate = selectedDate;
                          expireDateController.text =
                              DateFormat('dd-MM-yyyy').format(expireDate!);
                        }
                      },
                    ),
                    const SizedBox(
                      height: 55,
                    )
                  ],
                ),
              );
      },
    );
  }
}
