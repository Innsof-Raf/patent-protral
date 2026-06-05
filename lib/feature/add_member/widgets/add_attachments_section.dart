// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
//import 'package:path/path.dart' as p;
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

class AddAttachmentsSection extends StatelessWidget {
  const AddAttachmentsSection({super.key});
  @override
  Widget build(BuildContext context) {
    //context.read<DocumentsBloc>().add(const ClearDocuments());
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        // BlocBuilder<DocumentsBloc, DocumentsState>(
        //   builder: (context, state) {
        //     return state.documents.isEmpty
        //         ? const SizedBox()
        //         : Flexible(
        //             child: ListView.separated(
        //                 padding: const EdgeInsets.only(bottom: 10),
        //                 shrinkWrap: true,
        //                 physics: const NeverScrollableScrollPhysics(),
        //                 itemBuilder: (context, index) => Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Flexible(
        //                           child: Text(
        //                               p.basename(state.documents[index].path),
        //                               style: AppTextStyles.largeRobotoNormal),
        //                         ),
        //                         TextButton(
        //                             style: TextButton.styleFrom(
        //                                 padding: EdgeInsets.zero,
        //                                 foregroundColor: AppColors.skyblue,
        //                                 textStyle: AppTextStyles
        //                                     .bodyLargeRobotoSemiBold
        //                                     .copyWith(color: AppColors.blue),
        //                                 minimumSize: const Size(0, 0)),
        //                             onPressed: () {
        //                               context.read<DocumentsBloc>().add(
        //                                       UpdateDocuments(documents: [
        //                                     state.documents[index]
        //                                   ]));
        //                             },
        //                             child: const Text(
        //                               'Remove',
        //                             ))
        //                       ],
        //                     ),
        //                 separatorBuilder: (context, index) => const SizedBox(
        //                       height: 10,
        //                     ),
        //                 itemCount: state.documents.length));
        //   },
        // ),
        TextButton(
            style: TextButton.styleFrom(
                minimumSize: const Size(0, 0),
                foregroundColor: AppColors.white,
                padding: EdgeInsets.zero,
                backgroundColor: AppColors.white,
                elevation: 0,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            onPressed: () {
              // AddMemberScreenHelpers.pickDocuments(context: context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundColor: AppColors.dividerGrayColor,
                  child: SvgPicture.asset('assets/icons/attachment_icon.svg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Flexible(
                  child: Text(
                    'Add Document',
                    style: AppTextStyles.largeRobotoNormal,
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 55,
        )
      ],
    );
  }
}
