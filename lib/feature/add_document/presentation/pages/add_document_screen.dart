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
import 'package:patient_portal/core/resources/common_widgets.dart/active_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_dropdown_field.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_snack_bar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_text_field.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/params/add_document_params.dart';
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_document/presentation/widgets/add_document_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/widgets/profile_section_card.dart';

@RoutePage(name: 'AddDocumentRoute')
class AddDocumentScreen extends StatefulWidget {
  const AddDocumentScreen({super.key});

  @override
  State<AddDocumentScreen> createState() => _AddDocumentScreenState();
}

class _AddDocumentScreenState extends State<AddDocumentScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _expireDateController;
  late final TextEditingController _documentNameController;
  late final ValueNotifier<DateTime?> _expireDateNotifier;
  late final ValueNotifier<int?> _selectedMemberNotifier;
  late final ValueNotifier<int?> _selectedDocumentTypeNotifier;
  late final ValueNotifier<File?> _selectedDocumentNotifier;

  @override
  void initState() {
    super.initState();
    _expireDateController = TextEditingController();
    _documentNameController = TextEditingController();
    _expireDateNotifier = ValueNotifier<DateTime?>(null);
    _selectedMemberNotifier = ValueNotifier<int?>(null);
    _selectedDocumentTypeNotifier = ValueNotifier<int?>(null);
    _selectedDocumentNotifier = ValueNotifier<File?>(null);
    _fetchDocumentTypes();
  }

  @override
  void dispose() {
    _expireDateController.dispose();
    _documentNameController.dispose();
    _expireDateNotifier.dispose();
    _selectedMemberNotifier.dispose();
    _selectedDocumentTypeNotifier.dispose();
    _selectedDocumentNotifier.dispose();
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
            CommonSnackBar.show(
              context,
              message: AppStaticTexts.documentUploadedSuccessfully,
              type: SnackBarType.success,
            );
            context.router.back();
          }

          if (state.isUploadingDocumentFailed) {
            CommonSnackBar.show(
              context,
              message: state.error.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, state) {
          if (state.isFetchingDocumentTypes ||
              (!state.isFetchingDocumentTypesSuccess &&
                  !state.isFetchingDocumentTypesFailed)) {
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
            return CommonEmptyState(
              title: AppStaticTexts.documentTypesUnavailable,
              description: AppStaticTexts.documentTypesUnavailableMessage,
              icon: Icons.folder_off_outlined,
              actionLabel: AppStaticTexts.refresh,
              onAction: _fetchDocumentTypes,
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 112),
            child: Form(
              key: _formKey,
              child: ProfileSectionCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppStaticTexts.documents,
                      style: AppTextStyles.subHeadingSemiBoldRoboto.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      AppStaticTexts.documentsSubtitle,
                      style: AppTextStyles.largeRobotoNormal.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const Gap(24),
                    ValueListenableBuilder<int?>(
                      valueListenable: _selectedMemberNotifier,
                      builder: (context, selectedMember, child) {
                        return CommonDropdownField<int>(
                          labelText: AppStaticTexts.member,
                          value: selectedMember,
                          validator: (value) =>
                              AddDocumentScreenHelpers.validateSelectedMember(
                                value: value,
                                selectedMember: _selectedMemberNotifier.value,
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
                            _selectedMemberNotifier.value = value;
                          },
                        );
                      },
                    ),
                    const Gap(24),
                    ValueListenableBuilder<int?>(
                      valueListenable: _selectedDocumentTypeNotifier,
                      builder: (context, selectedDocumentType, child) {
                        return CommonDropdownField<int>(
                          labelText: AppStaticTexts.documentType,
                          value: selectedDocumentType,
                          validator: (value) =>
                              AddDocumentScreenHelpers.validateDocumentType(
                                value: value,
                                selectedDocumentType:
                                    _selectedDocumentTypeNotifier.value,
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
                            _selectedDocumentTypeNotifier.value = value;
                          },
                        );
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
                            expireDate: _expireDateNotifier.value,
                          ),
                      onTap: () async {
                        final date =
                            await AddDocumentScreenHelpers.getExpireDate(
                              initialDate:
                                  _expireDateNotifier.value ??
                                  DateTime.now().add(const Duration(days: 1)),
                              context: context,
                            );
                        if (date != null) {
                          _expireDateNotifier.value = date;
                          _expireDateController.text = DateFormat(
                            'dd/MM/yyyy',
                          ).format(date);
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
                            selectedDocument: _selectedDocumentNotifier.value,
                          ),
                      onTap: () async {
                        final result =
                            await AddDocumentScreenHelpers.pickDocument(
                              context: context,
                            );
                        if (result != null) {
                          _selectedDocumentNotifier.value = result.file;
                          _documentNameController.text = result.name;
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: BlocBuilder<AddDocumentBloc, AddDocumentState>(
              builder: (context, state) {
                return ActiveButton(
                  width: double.infinity,
                  isLoading: state.isUploadingDocument,
                  onPressed: _onSubmit,
                  child: const Text(AppStaticTexts.addDocument),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    context.read<AddDocumentBloc>().add(
      UploadDocument(
        params: AddDocumentParams.uploadDocument(
          token: context.read<UserBloc>().state.user!.accessToken,
          memberId: _selectedMemberNotifier.value!,
          documentName: _documentNameController.text,
          documentPath: _selectedDocumentNotifier.value!.path,
          expireDate: _expireDateNotifier.value,
          idDocument: _selectedDocumentTypeNotifier.value!.toString(),
        ),
      ),
    );
  }
}
