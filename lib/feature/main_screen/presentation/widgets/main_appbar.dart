import 'package:flutter/material.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MainShellAppBar(title: title);
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
