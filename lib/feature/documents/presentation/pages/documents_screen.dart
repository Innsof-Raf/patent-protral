import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/documents/presentation/widgets/documets_screen_app_bar.dart';
import 'package:patient_portal/feature/documents/presentation/widgets/documents_tile.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';

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
    context.read<DocumentsBloc>().add(
      GetDocuments(
        memberId: 0,
        mobileNumber: context.read<UserBloc>().state.user!.mobileNumber,
        token: context.read<UserBloc>().state.user!.accessToken,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DocumentsScreenAppBar(),
      body: BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (context, state) {
          if (state.isFetching) {
            return LayoutBuilder(
              builder: (context, constraints) => Center(
                child: Image.asset(
                  'assets/gif_images/Ripple-0 2.gif',
                  width: constraints.maxWidth * .3,
                ),
              ),
            );
          } else if (state.isFetchingFailed) {
            return Center(
              child: Text(
                state.error.message,
                style: AppTextStyles.largeRobotoNormal,
              ),
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
              return const Center(
                child: Text(
                  'No documents Found',
                  style: AppTextStyles.largeRobotoNormal,
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
