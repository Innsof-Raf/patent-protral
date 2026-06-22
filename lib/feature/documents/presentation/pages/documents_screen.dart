import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/documents/presentation/widgets/documents_tile.dart';
import 'package:patient_portal/feature/documents/presentation/widgets/documets_screen_app_bar.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'DocumentsRoute')
class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  void initState() {
    super.initState();
    _fetchDocuments();
  }

  void _fetchDocuments() {
    final user = context.read<UserBloc>().state.user!;
    context.read<DocumentsBloc>().add(
      GetDocuments(
        memberId: 0,
        mobileNumber: user.mobileNumber,
        token: user.accessToken,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const DocumentsScreenAppBar(),
      body: BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (context, state) {
          if (state.isFetching) {
            return const CommonLoadingView();
          } else if (state.isFetchingFailed) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadDocuments,
              message: state.error.message,
              onRetry: _fetchDocuments,
            );
          } else {
            List<Document> documents = [];
            if (state.selectedMemberId == 0) {
              documents = state.documents;
            } else {
              documents = state.documents
                  .where(
                    (document) => document.memberId == state.selectedMemberId,
                  )
                  .toList();
            }
            if (documents.isEmpty) {
              return Center(
                child: Text(
                  AppStaticTexts.noDocumentsFound,
                  style: theme.textTheme.titleMedium,
                ),
              );
            } else {
              return ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                padding: const EdgeInsets.only(
                  right: 10,
                  top: 10,
                  left: 10,
                  bottom: 55,
                ),
                itemCount: documents.length,
                itemBuilder: (context, index) =>
                    DocumentTile(document: documents[index]),
              );
            }
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.vilot,
        onPressed: () {
          context.router.push(const AddDocumentRoute());
        },
        child: const Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
