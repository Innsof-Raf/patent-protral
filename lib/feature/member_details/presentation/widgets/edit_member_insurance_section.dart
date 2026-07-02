import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/rounded_check_box.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/member_details/presentation/helpers/edit_member_insurance_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

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
    EditMemberInsuranceHelpers.selectedInsuranceNotifier.value = null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedCheckBoxTile(
          isSelected: true,
          onChanged: () {},
          title: context.lang.iHaveInsurance,
        ),
        Form(
          key: EditMemberInsuranceSection.insuranceFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(10),
              DropdownButtonFormField<int>(
                focusColor: AppColors.white,
                isExpanded: true,
                items: [],
                validator: (value) =>
                    InsuranceValidationHelpers.validateInsuranceType(
                      context,
                      value: value,
                    ),
                decoration: InputDecoration(labelText: context.lang.insurance),
                onChanged: (value) {
                  EditMemberInsuranceHelpers.selectedInsuranceNotifier.value =
                      value;
                },
              ),
              ValueListenableBuilder(
                valueListenable:
                    EditMemberInsuranceHelpers.selectedInsuranceNotifier,
                builder: (context, value, child) {
                  EditMemberInsuranceSection.insuranceNameController.text = '';
                  return value == 0
                      ? Form(
                          key: EditMemberInsuranceSection.insuranceNameFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Gap(10),
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
                                      context,
                                      value: value,
                                    ),
                                textCapitalization:
                                    TextCapitalization.characters,
                                decoration: InputDecoration(
                                  labelText: context.lang.insuranceName,
                                ),
                                style: AppTextStyles.textFormFieldStyle,
                                cursorColor: AppColors.textFormFieldStyleColor,
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.shrink();
                },
              ),
              const Gap(10),
              TextFormField(
                validator: (value) =>
                    InsuranceValidationHelpers.validateMemberNumber(
                      context,
                      value: value,
                    ),
                controller: EditMemberInsuranceSection.memberNumberController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                ],
                decoration: InputDecoration(
                  labelText: context.lang.memberNumber,
                ),
                style: AppTextStyles.textFormFieldStyle,
                cursorColor: AppColors.textFormFieldStyleColor,
              ),
              const Gap(10),
              TextFormField(
                readOnly: true,
                validator: (value) =>
                    InsuranceValidationHelpers.expireDateValidator(
                      context,
                      value: value,
                    ),
                decoration: InputDecoration(labelText: context.lang.expireDate),
                style: AppTextStyles.textFormFieldStyle,
                controller: EditMemberInsuranceSection.expireDateController,
                onTap: () async {
                  final DateTime? selectedDate =
                      await EditMemberInsuranceHelpers.getExpireDate(
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
