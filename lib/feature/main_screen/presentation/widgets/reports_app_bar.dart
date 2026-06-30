import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';

class ReportsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReportsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainShellAppBar(title: AppStaticTexts.reports);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
