import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/documents/domain/entities/document.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/documents/presentation/helpers/documents_screen_helpers.dart';
import 'package:patient_portal/feature/documents/presentation/widgets/documents_tile.dart';
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
      appBar: CommonAppbar(
        titleWidget: BlocBuilder<UserBloc, UserState>(
          builder: (userContext, userState) {
            return BlocBuilder<DocumentsBloc, DocumentsState>(
              builder: (context, state) {
                final selectedName = state.selectedMemberId == 0
                    ? AppStaticTexts.allDocuments
                    : userState.user!.members
                          .singleWhere(
                            (element) => element.id == state.selectedMemberId,
                          )
                          .name;

                return PopupMenuButton<int>(
                  initialValue: state.selectedMemberId,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  position: PopupMenuPosition.under,
                  padding: EdgeInsets.zero,
                  onSelected: (value) {
                    context.read<DocumentsBloc>().add(
                      GetDocuments(
                        memberId: value,
                        mobileNumber: context
                            .read<UserBloc>()
                            .state
                            .user!
                            .mobileNumber,
                        token: context.read<UserBloc>().state.user!.accessToken,
                      ),
                    );
                  },
                  itemBuilder: (context) =>
                      DocumentsScreenHelpers.createPopupMenuItem(
                        userState.user!.members,
                      ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest
                          .withValues(alpha: .3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipOval(
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) {
                                return Image.asset(
                                  Assets.images.memberDefaultProfileImage.path,
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ),
                          const Gap(8),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 120),
                            child: Text(
                              selectedName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.largeSemiBoldRoboto.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Gap(2),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: theme.colorScheme.onSurfaceVariant,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
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
              return CommonEmptyState(
                title: AppStaticTexts.noDocumentsFound,
                description: AppStaticTexts.noReportsMessage,
                icon: Icons.folder_open_outlined,
                actionLabel: AppStaticTexts.refresh,
                onAction: _fetchDocuments,
              );
            } else {
              return ListView.separated(
                separatorBuilder: (context, index) => const Gap(10),
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
        backgroundColor: AppColors.violet,
        onPressed: () {
          context.router.push(const AddDocumentRoute());
        },
        child: const Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
