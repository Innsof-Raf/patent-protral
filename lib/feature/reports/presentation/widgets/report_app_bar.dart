import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
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
      surfaceTintColor: theme.colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 3,
      centerTitle: false,
      leading: Center(
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          onPressed: () => Navigator.of(context).pop(),
          color: theme.colorScheme.onSurface,
          tooltip: 'Back',
          style: IconButton.styleFrom(
            backgroundColor: theme.colorScheme.surfaceContainerHighest
                .withValues(alpha: 0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      titleSpacing: 0,
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              Assets.icons.pdfIcon.path,
              height: 20,
              width: 20,
            ),
          ),
          const Gap(12),
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
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  DateFormat(
                    'dd MMM yyyy, hh:mm a',
                  ).format(consultaionDateTime),
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
      actions: [
        BlocBuilder<ReportsBloc, ReportsState>(
          builder: (context, state) {
            if (state.isReportSaving ||
                state.isReportSavingFailed ||
                state.report == null) {
              return const SizedBox.shrink();
            }
            return IconButton(
              style: IconButton.styleFrom(
                backgroundColor: theme.colorScheme.surfaceContainerHighest
                    .withValues(alpha: 0.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                final XFile file = XFile.fromData(
                  state.report!.bytes,
                  name: 'report',
                  mimeType: 'pdf',
                );

                await SharePlus.instance.share(ShareParams(files: [file]));
              },
              icon: const Icon(Icons.share_outlined, size: 20),
            );
          },
        ),
        const Gap(12),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
