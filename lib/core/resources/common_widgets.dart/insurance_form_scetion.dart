import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/constant_messages.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/gen/assets.gen.dart';

import '../common_helpers/inurance_validation_helpers.dart';

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
    _initializeData();
    _fetchInsurances();
  }

  void _initializeData() {
    if (widget.idInsurance != null) {
      InsuranceHelpers.selectedInsuranceNotifer.value = widget.idInsurance;
      InsuranceFormSection.expireDate = widget.memberInsuranvceExpireDate;
      InsuranceFormSection.memberNumberController.text =
          widget.memberNumber ?? '';
      if (widget.memberInsuranvceExpireDate != null) {
        InsuranceFormSection.expireDateController.text = DateFormat(
          'dd-MM-yyyy',
        ).format(widget.memberInsuranvceExpireDate!);
      }
    } else {
      InsuranceFormSection.expireDateController.text = '';
      InsuranceFormSection.memberNumberController.text = '';
      InsuranceFormSection.expireDate = null;
      InsuranceHelpers.selectedInsuranceNotifer.value = null;
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
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
            context: context,
            contant: '${state.error.message}\nCan\'t add insurance right now',
          );
        }
        if (state.isInsuranceFetchingSuccess && state.insurances.isEmpty) {
          InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetrchingFailedSnakBar(
            context: context,
            contant:
                '${ConstantMessages.serverFailureMessage}\nCan\'t add insurance right now',
          );
        }
      },
      builder: (context, state) {
        if (state.isFetchingInsurances) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(Assets.gifImages.ripple02.path, width: 80),
            ),
          );
        }

        return Form(
          key: InsuranceFormSection.insuranceFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int>(
                isExpanded: true,
                initialValue: InsuranceHelpers.selectedInsuranceNotifer.value,
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
                  labelText: 'Insurance Provider',
                  prefixIcon: Icon(Icons.business_rounded),
                ),
                onChanged: (value) {
                  setState(() {
                    InsuranceHelpers.selectedInsuranceNotifer.value = value;
                  });
                },
              ),
              ValueListenableBuilder<int?>(
                valueListenable: InsuranceHelpers.selectedInsuranceNotifer,
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
                          labelText: 'Insurance Name',
                          prefixIcon: Icon(
                            Icons.drive_file_rename_outline_rounded,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
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
                  labelText: 'Member Number',
                  prefixIcon: Icon(Icons.pin_rounded),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                readOnly: true,
                validator: (value) =>
                    InsuranceValidationHelpers.expireDateValidator(
                      value: value,
                    ),
                decoration: const InputDecoration(
                  labelText: 'Expiration Date',
                  prefixIcon: Icon(Icons.event_busy_rounded),
                ),
                controller: InsuranceFormSection.expireDateController,
                onTap: () async {
                  DateTime? selectedDate = await InsuranceHelpers.getExpireDate(
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
