import 'package:flutter/material.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainShellAppBar(title: 'My Profile', centerTitle: true);
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
