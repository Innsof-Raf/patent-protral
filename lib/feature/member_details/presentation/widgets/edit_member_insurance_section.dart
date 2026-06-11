import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/member_details/presentation/helpers/eidt_member_insurance_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/inurance_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/rounded_cheack_box.dart';

class EditMemberInsuranceSection extends StatefulWidget {
  static DateTime? expireDate;

  static GlobalKey<FormState> insuranceFormKey = GlobalKey<FormState>();
  static GlobalKey<FormState> insuranceNameFormKey = GlobalKey<FormState>();
  static TextEditingController memberNumberController = TextEditingController();
  static TextEditingController expireDateController = TextEditingController();
  static TextEditingController insuranceNameController =
      TextEditingController();

  const EditMemberInsuranceSection({super.key});

  @override
  State<EditMemberInsuranceSection> createState() =>
      _EditMemberInsuranceSectionState();
}

class _EditMemberInsuranceSectionState
    extends State<EditMemberInsuranceSection> {
  @override
  void initState() {
    super.initState();
    context.read<AddMemberBloc>().add(
      FetchInsurances(token: context.read<UserBloc>().state.user!.accessToken),
    );
    EditMemberInsuranceSection.expireDate = null;
    EditMemberInsuranceSection.memberNumberController.text = '';
    EditMemberInsuranceSection.expireDateController.text = '';
    EditMemberInuranceHelpers.selectedInsuranceNotifer.value = null;
  }

  @override
  Widget build(BuildContext context) {
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
          key: EditMemberInsuranceSection.insuranceFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              DropdownButtonFormField<int>(
                focusColor: AppColors.white,
                isExpanded: true,
                items: [],
                validator: (value) =>
                    InsuranceValidationHelpers.validateInsuranceType(
                      value: value,
                    ),
                decoration: const InputDecoration(labelText: 'Insurence'),
                onChanged: (value) {
                  EditMemberInuranceHelpers.selectedInsuranceNotifer.value =
                      value;
                },
              ),
              ValueListenableBuilder(
                valueListenable:
                    EditMemberInuranceHelpers.selectedInsuranceNotifer,
                builder: (context, value, child) {
                  EditMemberInsuranceSection.insuranceNameController.text = '';
                  return value == 0
                      ? Form(
                          key: EditMemberInsuranceSection.insuranceNameFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: EditMemberInsuranceSection
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
                                cursorColor: AppColors.textFormFiledStyleColor,
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
                controller: EditMemberInsuranceSection.memberNumberController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                ],
                decoration: const InputDecoration(labelText: 'Member Number'),
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
                decoration: const InputDecoration(labelText: 'Expire date'),
                style: AppTextStyles.textFormFieldStyle,
                controller: EditMemberInsuranceSection.expireDateController,
                onTap: () async {
                  DateTime? selectedDate =
                      await EditMemberInuranceHelpers.getExpireDate(
                        initialDate:
                            EditMemberInsuranceSection.expireDate ??
                            DateTime.now().add(const Duration(days: 1)),
                        context: context,
                      );
                  if (selectedDate != null) {
                    EditMemberInsuranceSection.expireDate = selectedDate;
                    EditMemberInsuranceSection.expireDateController.text =
                        DateFormat(
                          'dd-MM-yyyy',
                        ).format(EditMemberInsuranceSection.expireDate!);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
