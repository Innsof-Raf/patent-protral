import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';

import '../app_colors.dart';
import '../app_text_styles.dart';
import '../common_helpers/inurance_validation_helpers.dart';
import 'package:patient_portal/gen/assets.gen.dart';

class InsuranceFormSection extends StatefulWidget {
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
    super.key,
    this.idInsurance,
    this.insuranceName,
    this.memberNumber,
    this.memberInsuranvceExpireDate,
  });

  @override
  State<InsuranceFormSection> createState() => _InsuranceFormSectionState();
}

class _InsuranceFormSectionState extends State<InsuranceFormSection> {
  @override
  void initState() {
    super.initState();
    if (widget.idInsurance != null) {
      InsuranceHelpers.selectedInsuranceNotifer.value = widget.idInsurance;
      InsuranceFormSection.expireDate = widget.memberInsuranvceExpireDate;
      InsuranceFormSection.memberNumberController.text = widget.memberNumber!;
      InsuranceFormSection.expireDateController.text = DateFormat(
        'dd-MM-yyyy',
      ).format(widget.memberInsuranvceExpireDate!);
    } else {
      InsuranceFormSection.expireDateController.text = '';
      InsuranceFormSection.memberNumberController.text = '';
      InsuranceFormSection.expireDate = null;
      InsuranceHelpers.selectedInsuranceNotifer.value = null;
    }
    context.read<AddMemberBloc>().add(
      FetchInsurances(token: context.read<UserBloc>().state.user!.accessToken),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddMemberBloc, AddMemberState>(
      listener: (context, state) {
        if (state.isInsuranceFetchingFailed &&
            !state.isInsuranceFetchingSuccess) {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
            context: context,
            contant: '${state.error.message} \n Can\'t add insurance right now',
          );
        }
        if (state.isInsuranceFetchingSuccess &&
            !state.isInsuranceFetchingFailed &&
            state.insurances.isEmpty) {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
            context: context,
            contant:
                '${ConstantMessages.serverFailureMessage} \n Can\'t add insurance right now',
          );
        }
      },
      builder: (context, state) {
        return state.isFetchingInsurances
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  Image.asset(Assets.gifImages.ripple02.path, width: 100),
                ],
              )
            : Form(
                key: InsuranceFormSection.insuranceFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    DropdownButtonFormField(
                      focusColor: AppColors.white,
                      isExpanded: true,
                      initialValue: widget.idInsurance,
                      items: state.insurances
                          .map(
                            (insurance) => InsuranceHelpers.createDropDownItem(
                              insurance: insurance,
                            ),
                          )
                          .toList(),
                      validator: (value) =>
                          InsuranceValidationHelpers.validateInsuranceType(
                            value: value,
                          ),
                      decoration: const InputDecoration(labelText: 'Insurence'),
                      onChanged: (value) {
                        InsuranceHelpers.selectedInsuranceNotifer.value = value;
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable:
                          InsuranceHelpers.selectedInsuranceNotifer,
                      builder: (context, value, child) {
                        if (widget.insuranceName != null) {
                          InsuranceFormSection.insuranceNameController.text =
                              widget.insuranceName!;
                        } else {
                          InsuranceFormSection.insuranceNameController.text =
                              '';
                        }
                        return value == 0
                            ? Form(
                                key: InsuranceFormSection.insuranceNameFormKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      controller: InsuranceFormSection
                                          .insuranceNameController,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'[A-Za-z ]'),
                                        ),
                                        LengthLimitingTextInputFormatter(20),
                                      ],
                                      validator: (value) =>
                                          InsuranceValidationHelpers.validateInsuranceName(
                                            value: value,
                                          ),
                                      textCapitalization:
                                          TextCapitalization.characters,
                                      decoration: const InputDecoration(
                                        labelText: 'Insurance Name',
                                      ),
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
                    const SizedBox(height: 10),
                    TextFormField(
                      validator: (value) =>
                          InsuranceValidationHelpers.validateMemberNumber(
                            value: value,
                          ),
                      controller: InsuranceFormSection.memberNumberController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(20),
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[A-Za-z0-9]'),
                        ),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Member Number',
                      ),
                      style: AppTextStyles.textFormFieldStyle,
                      cursorColor: AppColors.textFormFiledStyleColor,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      readOnly: true,
                      validator: (value) =>
                          InsuranceValidationHelpers.expireDateValidator(
                            value: value,
                          ),
                      decoration: const InputDecoration(
                        labelText: 'Expire date',
                      ),
                      style: AppTextStyles.textFormFieldStyle,
                      controller: InsuranceFormSection.expireDateController,
                      onTap: () async {
                        DateTime? selectedDate =
                            await InsuranceHelpers.getExpireDate(
                              initialDate:
                                  InsuranceFormSection.expireDate ??
                                  DateTime.now().add(const Duration(days: 1)),
                              context: context,
                            );
                        if (selectedDate != null) {
                          InsuranceFormSection.expireDate = selectedDate;
                          InsuranceFormSection.expireDateController.text =
                              DateFormat(
                                'dd-MM-yyyy',
                              ).format(InsuranceFormSection.expireDate!);
                        }
                      },
                    ),
                    const SizedBox(height: 55),
                  ],
                ),
              );
      },
    );
  }
}
