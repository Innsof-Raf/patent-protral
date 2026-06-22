import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
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
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: theme.brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark,
      ),
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              Assets.icons.pdfIcon.path,
              height: 20,
              width: 20,
              colorFilter: ColorFilter.mode(
                theme.colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  doctorName,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat(
                    'dd MMM yyyy, hh:mm a',
                  ).format(consultaionDateTime),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            if (state.isRepoertSaving ||
                state.isReportSavingFailed ||
                state.report == null) {
              return const SizedBox.shrink();
            }
            return IconButton(
              onPressed: () async {
                final XFile file = XFile.fromData(
                  state.report!.bytes,
                  name: 'report',
                  mimeType: 'pdf',
                );

                await SharePlus.instance.share(ShareParams(files: [file]));
              },
              icon: const Icon(Icons.share_outlined),
            );
          },
        ),
        const SizedBox(width: 8),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Divider(
          height: 1,
          thickness: 1,
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 1);
}
