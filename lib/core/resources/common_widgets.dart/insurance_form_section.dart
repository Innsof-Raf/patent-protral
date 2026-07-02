import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_validation_helpers.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
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
        InsuranceFormSection.expireDateController.text =
            DateFormat('dd-MM-yyyy', context.currentLang)
                .format(widget.memberInsuranceExpireDate!)
                .localize(context.currentLang);
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

  InputDecoration _getInputDecoration(
    BuildContext context,
    String label,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: theme.colorScheme.primary),
      filled: true,
      fillColor: theme.colorScheme.surfaceContainerHighest.withValues(
        alpha: 0.3,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: theme.colorScheme.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: theme.colorScheme.error),
      ),
    );
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
                '${state.error.message}\n${context.lang.cannotAddInsuranceRightNow}',
          );
        }
        if (state.isInsuranceFetchingSuccess && state.insurances.isEmpty) {
          InsuranceHelpers.insuranceCheckBoxNotifier.value = false;
          InsuranceHelpers.showInsuranceFetchingFailedSnackBar(
            context: context,
            content:
                '${ConstantMessages.translate(context, ConstantMessages.serverFailureMessage)}\n${context.lang.cannotAddInsuranceRightNow}',
          );
        }
      },
      builder: (context, state) {
        if (state.isFetchingInsurances) {
          return const CommonLoadingView(
            size: 60,
            padding: EdgeInsets.all(40),
            showContainer: false,
          );
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
                      context,
                      value: value,
                    ),
                decoration: _getInputDecoration(
                  context,
                  context.lang.insuranceProvider,
                  Icons.business_rounded,
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
                              context,
                              value: value,
                            ),
                        textCapitalization: TextCapitalization.words,
                        decoration: _getInputDecoration(
                          context,
                          context.lang.insuranceName,
                          Icons.drive_file_rename_outline_rounded,
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
                      context,
                      value: value,
                    ),
                controller: InsuranceFormSection.memberNumberController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                ],
                decoration: _getInputDecoration(
                  context,
                  context.lang.memberNumber,
                  Icons.pin_rounded,
                ),
              ),
              const Gap(16),
              TextFormField(
                readOnly: true,
                validator: (value) =>
                    InsuranceValidationHelpers.expireDateValidator(
                      context,
                      value: value,
                    ),
                decoration: _getInputDecoration(
                  context,
                  context.lang.expirationDate,
                  Icons.event_busy_rounded,
                ),
                controller: InsuranceFormSection.expireDateController,
                onTap: () async {
                  final String locale = context.currentLang;
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
                      locale,
                    ).format(selectedDate).localize(locale);
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
