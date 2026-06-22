import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';

class MedicalInsuranceAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MedicalInsuranceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
      title: Text(
        'Medical Insurance',
        style: AppTextStyles.largeSemiBoldRoboto,
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textDark),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
