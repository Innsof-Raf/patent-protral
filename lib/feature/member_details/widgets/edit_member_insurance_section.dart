import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../resources/common_helpers/inurance_validation_helpers.dart';
import '../../../resources/common_widgets.dart/rounded_cheack_box.dart';
import '../../add_member/blocs/inurance_bloc/insurance_bloc.dart';
import '../../profile/bloc/user_bloc.dart';
import '../helpers/eidt_member_insurance_helpers.dart';

class EditMemberInsuranceSection extends StatelessWidget {
  static DateTime? expireDate;

  static GlobalKey<FormState> insuranceFormKey = GlobalKey<FormState>();
  static GlobalKey<FormState> insuranceNameFormKey = GlobalKey<FormState>();
  static TextEditingController memberNumberController = TextEditingController();
  static TextEditingController expireDateController = TextEditingController();
  static TextEditingController insuranceNameController =
      TextEditingController();
  const EditMemberInsuranceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InsuranceBloc>().add(FeatchInsurance(
          token: context.read<UserBloc>().state.user!.accessToken));
    });
    expireDate = null;

    memberNumberController.text = '';
    expireDateController.text = '';
    EditMemberInuranceHelpers.selectedInsuranceNotifer.value = null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedCheackBoxTile(
          isSelected: true,
          onChanged: () {},
          title: 'I have insurance',
        ),
        Form(
          key: insuranceFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField<int>(
                focusColor: AppColors.white,
                isExpanded: true,
                items: [],
                validator: (value) =>
                    InsuranceValidationHelpers.validateInsuranceType(
                        value: value),
                decoration: const InputDecoration(
                  labelText: 'Insurence',
                ),
                onChanged: (value) {
                  EditMemberInuranceHelpers.selectedInsuranceNotifer.value =
                      value;
                },
              ),
              ValueListenableBuilder(
                valueListenable:
                    EditMemberInuranceHelpers.selectedInsuranceNotifer,
                builder: (context, value, child) {
                  insuranceNameController.text = '';
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
                                validator: (value) => InsuranceValidationHelpers
                                    .validateInsuranceName(value: value),
                                textCapitalization:
                                    TextCapitalization.characters,
                                decoration: const InputDecoration(
                                    labelText: 'Insurance Name'),
                                style: AppTextStyles.textFormFieldStyle,
                                cursorColor: AppColors.textFormFiledStyleColor,
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
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]'))
                ],
                decoration: const InputDecoration(labelText: 'Member Number'),
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
                decoration: const InputDecoration(labelText: 'Expire date'),
                style: AppTextStyles.textFormFieldStyle,
                controller: expireDateController,
                onTap: () async {
                  DateTime? selectedDate =
                      await EditMemberInuranceHelpers.getExpireDate(
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
            ],
          ),
        )
      ],
    );
  }
}
