import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

class InsuranceFormSection extends StatefulWidget {
  final int? idInsurance;
  final String? insuranceName;
  final String? memberNumber;
  final DateTime? memberInsuranceExpireDate;
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
    this.memberInsuranceExpireDate,
  });

  @override
  State<InsuranceFormSection> createState() => _InsuranceFormSectionState();
}

class _InsuranceFormSectionState extends State<InsuranceFormSection> {
  @override
  void initState() {
    super.initState();
    _initializeData();
    _fetchInsurances();
  }

  void _initializeData() {
    if (widget.idInsurance != null) {
      InsuranceHelpers.selectedInsuranceNotifier.value = widget.idInsurance;
      InsuranceFormSection.expireDate = widget.memberInsuranceExpireDate;
      InsuranceFormSection.memberNumberController.text =
          widget.memberNumber ?? '';
      if (widget.memberInsuranceExpireDate != null) {
        InsuranceFormSection.expireDateController.text = DateFormat(
          'dd-MM-yyyy',
        ).format(widget.memberInsuranceExpireDate!);
      }
    } else {
      InsuranceFormSection.expireDateController.text = '';
      InsuranceFormSection.memberNumberController.text = '';
      InsuranceFormSection.expireDate = null;
      InsuranceHelpers.selectedInsuranceNotifier.value = null;
    }
  }

  void _fetchInsurances() {
    final token = context.read<UserBloc>().state.user?.accessToken;
    if (token != null) {
      context.read<AddMemberBloc>().add(FetchInsurances(token: token));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddMemberBloc, AddMemberState>(
      listener: (context, state) {
        if (state.isInsuranceFetchingFailed) {
          InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetchingFailedSnackBar(
            context: context,
            content:
                '${state.error.message}\n${AppStaticTexts.cannotAddInsuranceRightNow}',
          );
        }
        if (state.isInsuranceFetchingSuccess && state.insurances.isEmpty) {
          InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetchingFailedSnackBar(
            context: context,
            content:
                '${ConstantMessages.serverFailureMessage}\n${AppStaticTexts.cannotAddInsuranceRightNow}',
          );
        }
      },
      builder: (context, state) {
        if (state.isFetchingInsurances) {
          return const CommonLoadingView(size: 80, padding: EdgeInsets.all(20));
        }

        return Form(
          key: InsuranceFormSection.insuranceFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int>(
                isExpanded: true,
                initialValue: InsuranceHelpers.selectedInsuranceNotifier.value,
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
                decoration: const InputDecoration(
                  labelText: AppStaticTexts.insuranceProvider,
                  prefixIcon: Icon(Icons.business_rounded),
                ),
                onChanged: (value) {
                  InsuranceHelpers.selectedInsuranceNotifier.value = value;
                },
              ),
              ValueListenableBuilder<int?>(
                valueListenable: InsuranceHelpers.selectedInsuranceNotifier,
                builder: (context, value, child) {
                  if (value != 0) return const SizedBox.shrink();

                  if (widget.insuranceName != null) {
                    InsuranceFormSection.insuranceNameController.text =
                        widget.insuranceName!;
                  }

                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Form(
                      key: InsuranceFormSection.insuranceNameFormKey,
                      child: TextFormField(
                        controller:
                            InsuranceFormSection.insuranceNameController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[A-Za-z ]'),
                          ),
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) =>
                            InsuranceValidationHelpers.validateInsuranceName(
                              value: value,
                            ),
                        textCapitalization: TextCapitalization.words,
                        decoration: const InputDecoration(
                          labelText: AppStaticTexts.insuranceName,
                          prefixIcon: Icon(
                            Icons.drive_file_rename_outline_rounded,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Gap(16),
              TextFormField(
                validator: (value) =>
                    InsuranceValidationHelpers.validateMemberNumber(
                      value: value,
                    ),
                controller: InsuranceFormSection.memberNumberController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                ],
                decoration: const InputDecoration(
                  labelText: AppStaticTexts.memberNumber,
                  prefixIcon: Icon(Icons.pin_rounded),
                ),
              ),
              const Gap(16),
              TextFormField(
                readOnly: true,
                validator: (value) =>
                    InsuranceValidationHelpers.expireDateValidator(
                      value: value,
                    ),
                decoration: const InputDecoration(
                  labelText: AppStaticTexts.expirationDate,
                  prefixIcon: Icon(Icons.event_busy_rounded),
                ),
                controller: InsuranceFormSection.expireDateController,
                onTap: () async {
                  final DateTime? selectedDate =
                      await InsuranceHelpers.getExpireDate(
                        initialDate:
                            InsuranceFormSection.expireDate ??
                            DateTime.now().add(const Duration(days: 1)),
                        context: context,
                      );
                  if (selectedDate != null) {
                    InsuranceFormSection.expireDate = selectedDate;
                    InsuranceFormSection.expireDateController.text = DateFormat(
                      'dd-MM-yyyy',
                    ).format(selectedDate);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
