import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile(
      {Key? key,
      required this.iconPath,
      required this.tileName,
      required this.onPress})
      : super(key: key);
  final String iconPath;
  final String tileName;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
            padding: EdgeInsets.only(
                left: constraints.maxWidth * 0.08,
                top: constraints.maxWidth * 0.05,
                bottom: constraints.maxWidth * 0.05),
            side: BorderSide.none,
            backgroundColor: AppColors.vilot,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 22,
              width: 22,
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              tileName,
              style: AppTextStyles.subHeaddingSemiBoldRoboto
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      );
    });
  }
}
