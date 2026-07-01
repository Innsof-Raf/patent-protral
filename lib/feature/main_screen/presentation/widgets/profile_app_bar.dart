import 'package:flutter/material.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_shell_app_bar.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MainShellAppBar(
      title: AppStaticTexts.profileTitle,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
