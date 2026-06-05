import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/add_document/helpers/add_document_screen_helpers.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';

import '../../resources/app_text_styles.dart';
import '../../resources/common_widgets.dart/common_appbar.dart';
import 'bloc/add_document_bloc.dart';

class AddDocumentScreen extends StatelessWidget {
  static DateTime? expireDate;
  static int? selectedMember;
  static int? selectedDocumentType;
  static TextEditingController expireDateController = TextEditingController();
  static TextEditingController documentNameController = TextEditingController();
  static File? selectedDocument;

  const AddDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AddDocumentBloc>().add(GetDocumentTypes(
          token: context.read<UserBloc>().state.user!.accessToken));
    });
    expireDate = null;
    selectedDocumentType = null;
    selectedMember = null;
    expireDateController.text = '';
    documentNameController.text = '';
    return Scaffold(
      extendBody: true,
      appBar: const CommonAppbar(title: 'Add Document'),
      body: BlocBuilder<AddDocumentBloc, AddDocumentState>(
        builder: (context, state) {
          return state.isFetchingDocumentTypes
              ? LayoutBuilder(
                  builder: (context, constraints) => Center(
                        child: Image.asset(
                          'assets/gif_images/Ripple-0 2.gif',
                          width: constraints.maxWidth * .3,
                        ),
                      ))
              : state.isFetchingDocumentTypesFailed
                  ? Center(
                      child: Text(
                        state.error.message,
                        style: AppTextStyles.largeRobotoNormal,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : state.documentTypes.isEmpty
                      ? const Center(
                          child: Text(
                            'Somthing went wrong \n Can\'t add documents now',
                            style: AppTextStyles.largeRobotoNormal,
                            textAlign: TextAlign.center,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Form(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                DropdownButtonFormField<int>(
                                    validator: (value) =>
                                        AddDocumentScreenHelpers
                                            .validateSelectedMember(
                                                value: value),
                                    isExpanded: true,
                                    decoration: const InputDecoration(
                                        labelStyle:
                                            AppTextStyles.textFormFieldStyle,
                                        labelText: 'Member'),
                                    items: context
                                        .read<UserBloc>()
                                        .state
                                        .user!
                                        .members
                                        .map((member) =>
                                            AddDocumentScreenHelpers
                                                .createMemberDropDownItem(
                                                    member: member))
                                        .toList(),
                                    onChanged: (value) {
                                      selectedMember = value;
                                    }),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButtonFormField<int>(
                                    validator: (value) =>
                                        AddDocumentScreenHelpers
                                            .validateDocumentType(value: value),
                                    decoration: const InputDecoration(
                                        labelStyle:
                                            AppTextStyles.textFormFieldStyle,
                                        labelText: 'Document type'),
                                    items: context
                                        .read<AddDocumentBloc>()
                                        .state
                                        .documentTypes
                                        .map((documentType) =>
                                            AddDocumentScreenHelpers
                                                .createDocumentTypeDropDownItem(
                                                    document: documentType))
                                        .toList(),
                                    onChanged: (value) {
                                      selectedDocumentType = value;
                                    }),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  validator: (value) => AddDocumentScreenHelpers
                                      .validateExpireDate(value: value),
                                  readOnly: true,
                                  controller: expireDateController,
                                  onTap: () async {
                                    expireDate = await AddDocumentScreenHelpers
                                        .getExpireDate(
                                            initialDate: expireDate == null
                                                ? DateTime.now().add(
                                                    const Duration(days: 1))
                                                : expireDate!,
                                            context: context);
                                    if (expireDate != null) {
                                      expireDateController.text =
                                          DateFormat('dd/MM/yyyy')
                                              .format(expireDate!);
                                    }
                                  },
                                  decoration: const InputDecoration(
                                      labelStyle:
                                          AppTextStyles.textFormFieldStyle,
                                      labelText: 'ExpireDate'),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Flexible(
                                          child: TextFormField(
                                        validator: (value) =>
                                            AddDocumentScreenHelpers
                                                .validateSelectedDocument(
                                                    value: value),
                                        readOnly: true,
                                        onTap: () {
                                          AddDocumentScreenHelpers.pickDocument(
                                              context: context);
                                        },
                                        controller: documentNameController,
                                        decoration: const InputDecoration(
                                            labelStyle: AppTextStyles
                                                .textFormFieldStyle,
                                            labelText: 'Document'),
                                      )),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                width: .5,
                                                color: AppColors
                                                    .textFormFIeldBagroundColor),
                                          ),
                                          onPressed: () {
                                            AddDocumentScreenHelpers
                                                .pickDocument(context: context);
                                          },
                                          child: SvgPicture.asset(
                                              'assets/icons/attachment_icon.svg'))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 55,
                                )
                              ],
                            ),
                          ),
                        );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 16, right: 15),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.vilot,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    color: AppColors.black.withOpacity(.25),
                    offset: const Offset(0, 0))
              ],
              borderRadius: BorderRadius.circular(6)),
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  backgroundColor: AppColors.vilot,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.all(15)),
              onPressed: () {},
              child: Text(
                'Add',
                style: AppTextStyles.largeSemiBoldRoboto
                    .copyWith(color: AppColors.white),
              )),
        ),
      ),
    );
  }
}
