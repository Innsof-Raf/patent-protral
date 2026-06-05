import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../bloc/report_bloc.dart';

class ReportAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String doctorName;
  final String documentUrl;

  final DateTime consultaionDateTime;
  const ReportAppBar({
    super.key,
    required this.doctorName,
    required this.consultaionDateTime,
    required this.documentUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.white,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: AppColors.white,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/icons/pdf_icon.svg",
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  doctorName,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bodyTextRobotoSemiBold
                      .copyWith(color: AppColors.textDark),
                ),
                Text(
                  "Consulted on : ${DateFormat('dd/MM/yyyy  |  ').add_jm().format(consultaionDateTime)}",
                  style: AppTextStyles.bodySmallInterNormal,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.textDark,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        BlocBuilder<ReportBloc, ReportState>(
          builder: (context, state) {
            return state.isRepoertSaving ||
                    state.isReportSavingFailed ||
                    state.report == null
                ? const SizedBox()
                : IconButton(
                    splashRadius: 20,
                    onPressed: () async {
                      XFile file = XFile.fromData(state.report!,
                          name: 'report', mimeType: 'pdf');

                      await Share.shareXFiles([file]);
                    },
                    icon: const Icon(
                      Icons.share,
                      color: AppColors.textDark,
                    ));
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
