import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/documents/bloc/documents_bloc.dart';
import 'package:patient_portal/feature/documents/models/documents_model/document_model.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/route/route_constants.dart';

import '../../resources/app_colors.dart';
import 'widgets/documents_tile.dart';
import 'widgets/documets_screen_app_bar.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DocumentsBloc>().add(GetDocuments(
          memberId: 0,
          mobileNumber: context.read<UserBloc>().state.user!.mobileNumber,
          token: context.read<UserBloc>().state.user!.accessToken));
    });
    return Scaffold(
      appBar: const DocumentsScreenAppBar(),
      body:
          BlocBuilder<DocumentsBloc, DocumentsState>(builder: (context, state) {
        if (state.isFetching) {
          return LayoutBuilder(
              builder: (context, constraints) => Center(
                    child: Image.asset(
                      'assets/gif_images/Ripple-0 2.gif',
                      width: constraints.maxWidth * .3,
                    ),
                  ));
        } else if (state.isFetchingFailed) {
          return Center(
            child: Text(
              state.error.message,
              style: AppTextStyles.largeRobotoNormal,
            ),
          );
        } else {
          List<DocumentModel> documents = [];
          if (state.selectedMemberId == 0) {
            documents = state.documents;
          } else {
            documents = state.documents
                .where(
                    (document) => document.memberId == state.selectedMemberId)
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
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              padding: const EdgeInsets.only(
                  right: 10, top: 10, left: 10, bottom: 55),
              itemCount: state.documents.length,
              itemBuilder: (context, index) => DocumentTile(
                document: state.documents[index],
              ),
            );
          }
        }
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.vilot,
        onPressed: () {
          Navigator.of(context).pushNamed(RouteConstants.addDocumentScreen);
        },
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }
}
