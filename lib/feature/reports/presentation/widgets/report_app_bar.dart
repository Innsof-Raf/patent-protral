import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:share_plus/share_plus.dart';

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
    final theme = Theme.of(context);

    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Assets.icons.pdfIcon.path),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  doctorName,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Consulted on : ${DateFormat('dd/MM/yyyy  |  ').add_jm().format(consultaionDateTime)}",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            return state.isRepoertSaving ||
                    state.isReportSavingFailed ||
                    state.report == null
                ? const SizedBox.shrink()
                : IconButton(
                    splashRadius: 20,
                    onPressed: () async {
                      final XFile file = XFile.fromData(
                        state.report!.bytes,
                        name: 'report',
                        mimeType: 'pdf',
                      );

                      await SharePlus.instance.share(
                        ShareParams(files: [file]),
                      );
                    },
                    icon: const Icon(Icons.share, color: AppColors.textDark),
                  );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
