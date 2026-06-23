import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_dropdown_field.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_text_field.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_document/presentation/widgets/add_document_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'AddDocumentRoute')
class AddDocumentScreen extends StatefulWidget {
  const AddDocumentScreen({super.key});

  @override
  State<AddDocumentScreen> createState() => _AddDocumentScreenState();
}

class _AddDocumentScreenState extends State<AddDocumentScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _expireDate;
  int? _selectedMember;
  int? _selectedDocumentType;
  late final TextEditingController _expireDateController;
  late final TextEditingController _documentNameController;
  File? _selectedDocument;

  @override
  void initState() {
    super.initState();
    _expireDateController = TextEditingController();
    _documentNameController = TextEditingController();
    _fetchDocumentTypes();
  }

  @override
  void dispose() {
    _expireDateController.dispose();
    _documentNameController.dispose();
    super.dispose();
  }

  void _fetchDocumentTypes() {
    context.read<AddDocumentBloc>().add(
      GetDocumentTypes(token: context.read<UserBloc>().state.user!.accessToken),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: const CommonAppbar(title: AppStaticTexts.addDocument),
      body: BlocConsumer<AddDocumentBloc, AddDocumentState>(
        listener: (context, state) {
          if (state.isUploadingDocumentSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(AppStaticTexts.documentUploadedSuccessfully),
              ),
            );
            context.router.back();
          }

          if (state.isUploadingDocumentFailed) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error.message)));
          }
        },
        builder: (context, state) {
          if (state.isFetchingDocumentTypes) {
            return const CommonLoadingView();
          }

          if (state.isFetchingDocumentTypesFailed) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadDocumentTypes,
              message: state.error.message,
              onRetry: _fetchDocumentTypes,
            );
          }

          if (state.documentTypes.isEmpty) {
            return CommonErrorView(
              title: AppStaticTexts.documentTypesUnavailable,
              message: AppStaticTexts.documentTypesUnavailableMessage,
              onRetry: _fetchDocumentTypes,
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CommonDropdownField<int>(
                    labelText: AppStaticTexts.member,
                    value: _selectedMember,
                    validator: (value) =>
                        AddDocumentScreenHelpers.validateSelectedMember(
                          value: value,
                          selectedMember: _selectedMember,
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
                      setState(() {
                        _selectedMember = value;
                      });
                    },
                  ),
                  const Gap(24),
                  CommonDropdownField<int>(
                    labelText: AppStaticTexts.documentType,
                    value: _selectedDocumentType,
                    validator: (value) =>
                        AddDocumentScreenHelpers.validateDocumentType(
                          value: value,
                          selectedDocumentType: _selectedDocumentType,
                        ),
                    items: state.documentTypes
                        .map(
                          (documentType) =>
                              AddDocumentScreenHelpers.createDocumentTypeDropDownItem(
                                document: documentType,
                              ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedDocumentType = value;
                      });
                    },
                  ),
                  const Gap(24),
                  CommonTextField(
                    labelText: AppStaticTexts.expireDate,
                    controller: _expireDateController,
                    readOnly: true,
                    validator: (value) =>
                        AddDocumentScreenHelpers.validateExpireDate(
                          value: value,
                          expireDate: _expireDate,
                        ),
                    onTap: () async {
                      final date = await AddDocumentScreenHelpers.getExpireDate(
                        initialDate:
                            _expireDate ??
                            DateTime.now().add(const Duration(days: 1)),
                        context: context,
                      );
                      if (date != null) {
                        setState(() {
                          _expireDate = date;
                          _expireDateController.text = DateFormat(
                            'dd/MM/yyyy',
                          ).format(date);
                        });
                      }
                    },
                    suffixIcon: Icon(
                      Icons.calendar_today_outlined,
                      color: theme.colorScheme.primary.withValues(alpha: 0.6),
                      size: 24,
                    ),
                  ),
                  const Gap(24),
                  CommonTextField(
                    labelText: AppStaticTexts.document,
                    controller: _documentNameController,
                    readOnly: true,
                    validator: (value) =>
                        AddDocumentScreenHelpers.validateSelectedDocument(
                          value: value,
                          selectedDocument: _selectedDocument,
                        ),
                    onTap: () async {
                      final result =
                          await AddDocumentScreenHelpers.pickDocument(
                            context: context,
                          );
                      if (result != null) {
                        setState(() {
                          _selectedDocument = result.file;
                          _documentNameController.text = result.name;
                        });
                      }
                    },
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        Assets.icons.attachmentIcon.path,
                        colorFilter: ColorFilter.mode(
                          theme.colorScheme.primary.withValues(alpha: 0.6),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  const Gap(40),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          child: BlocBuilder<AddDocumentBloc, AddDocumentState>(
            builder: (context, state) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary.withValues(
                    alpha: 0.8,
                  ),
                  foregroundColor: theme.colorScheme.onPrimary,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                ),
                onPressed: state.isUploadingDocument
                    ? null
                    : () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<AddDocumentBloc>().add(
                            UploadDocument(
                              params: AddDocumentParams.uploadDocument(
                                token: context
                                    .read<UserBloc>()
                                    .state
                                    .user!
                                    .accessToken,
                                memberId: _selectedMember!,
                                documentName: _documentNameController.text,
                                documentPath: _selectedDocument!.path,
                                expireDate: _expireDate,
                                idDocument: _selectedDocumentType!.toString(),
                              ),
                            ),
                          );
                        }
                      },
                child: state.isUploadingDocument
                    ? SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          color: theme.colorScheme.onPrimary,
                          strokeWidth: 2,
                        ),
                      )
                    : Text(
                        AppStaticTexts.add,
                        style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
