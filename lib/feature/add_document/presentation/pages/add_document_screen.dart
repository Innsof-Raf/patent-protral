import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/feature/add_document/presentation/widgets/add_document_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/gen/assets.gen.dart';

import '../bloc/add_document_bloc.dart';

@RoutePage(name: 'AddDocumentRoute')
class AddDocumentScreen extends StatefulWidget {
  static DateTime? expireDate;
  static int? selectedMember;
  static int? selectedDocumentType;
  static TextEditingController expireDateController = TextEditingController();
  static TextEditingController documentNameController = TextEditingController();
  static File? selectedDocument;

  const AddDocumentScreen({super.key});

  @override
  State<AddDocumentScreen> createState() => _AddDocumentScreenState();
}

class _AddDocumentScreenState extends State<AddDocumentScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AddDocumentBloc>().add(
      GetDocumentTypes(token: context.read<UserBloc>().state.user!.accessToken),
    );
    AddDocumentScreen.expireDate = null;
    AddDocumentScreen.selectedDocumentType = null;
    AddDocumentScreen.selectedMember = null;
    AddDocumentScreen.expireDateController.text = '';
    AddDocumentScreen.documentNameController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CommonAppbar(title: 'Add Document'),
      body: BlocBuilder<AddDocumentBloc, AddDocumentState>(
        builder: (context, state) {
          return state.isFetchingDocumentTypes
              ? LayoutBuilder(
                  builder: (context, constraints) => Center(
                    child: Image.asset(
                      Assets.gifImages.ripple02.path,
                      width: constraints.maxWidth * .3,
                    ),
                  ),
                )
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
                        const SizedBox(height: 15),
                        DropdownButtonFormField<int>(
                          validator: (value) =>
                              AddDocumentScreenHelpers.validateSelectedMember(
                                value: value,
                              ),
                          isExpanded: true,
                          decoration: const InputDecoration(
                            labelStyle: AppTextStyles.textFormFieldStyle,
                            labelText: 'Member',
                          ),
                          items: context
                              .read<UserBloc>()
                              .state
                              .user!
                              .members
                              .map(
                                (member) =>
                                    AddDocumentScreenHelpers.createMemberDropDownItem(
                                      member: member,
                                    ),
                              )
                              .toList(),
                          onChanged: (value) {
                            AddDocumentScreen.selectedMember = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        DropdownButtonFormField<int>(
                          validator: (value) =>
                              AddDocumentScreenHelpers.validateDocumentType(
                                value: value,
                              ),
                          decoration: const InputDecoration(
                            labelStyle: AppTextStyles.textFormFieldStyle,
                            labelText: 'Document type',
                          ),
                          items: context
                              .read<AddDocumentBloc>()
                              .state
                              .documentTypes
                              .map(
                                (documentType) =>
                                    AddDocumentScreenHelpers.createDocumentTypeDropDownItem(
                                      document: documentType,
                                    ),
                              )
                              .toList(),
                          onChanged: (value) {
                            AddDocumentScreen.selectedDocumentType = value;
                          },
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (value) =>
                              AddDocumentScreenHelpers.validateExpireDate(
                                value: value,
                              ),
                          readOnly: true,
                          controller: AddDocumentScreen.expireDateController,
                          onTap: () async {
                            AddDocumentScreen.expireDate =
                                await AddDocumentScreenHelpers.getExpireDate(
                                  initialDate:
                                      AddDocumentScreen.expireDate == null
                                      ? DateTime.now().add(
                                          const Duration(days: 1),
                                        )
                                      : AddDocumentScreen.expireDate!,
                                  context: context,
                                );
                            if (AddDocumentScreen.expireDate != null) {
                              AddDocumentScreen.expireDateController.text =
                                  DateFormat(
                                    'dd/MM/yyyy',
                                  ).format(AddDocumentScreen.expireDate!);
                            }
                          },
                          decoration: const InputDecoration(
                            labelStyle: AppTextStyles.textFormFieldStyle,
                            labelText: 'ExpireDate',
                          ),
                        ),
                        const SizedBox(height: 10),
                        IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Flexible(
                                child: TextFormField(
                                  validator: (value) =>
                                      AddDocumentScreenHelpers.validateSelectedDocument(
                                        value: value,
                                      ),
                                  readOnly: true,
                                  onTap: () {
                                    AddDocumentScreenHelpers.pickDocument(
                                      context: context,
                                    );
                                  },
                                  controller:
                                      AddDocumentScreen.documentNameController,
                                  decoration: const InputDecoration(
                                    labelStyle:
                                        AppTextStyles.textFormFieldStyle,
                                    labelText: 'Document',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    width: .5,
                                    color: AppColors.textFormFIeldBagroundColor,
                                  ),
                                ),
                                onPressed: () {
                                  AddDocumentScreenHelpers.pickDocument(
                                    context: context,
                                  );
                                },
                                child: SvgPicture.asset(
                                  Assets.icons.attachmentIcon.path,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 55),
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
                color: AppColors.black.withValues(alpha: .25),
                offset: const Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(6),
          ),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              backgroundColor: AppColors.vilot,
              foregroundColor: AppColors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            child: Text(
              'Add',
              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
