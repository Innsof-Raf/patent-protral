import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient_portal/core/gen/fonts.gen.dart';
import 'package:patient_portal/core/resources/app_colors.dart';

class AppTextStyles {
  static const String interFont = FontFamily.inter;
  static final String robotoFont = GoogleFonts.roboto().fontFamily!;

  static final TextStyle bodyXSmallRobotoNormal = TextStyle(
    fontSize: 6,
    fontWeight: FontWeight.w400,
    color: AppColors.textDark,
    height: 1.6,
    fontFamily: robotoFont,
  );
  static final TextStyle bodySmallRobotoNormal = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    height: 1.2,
    fontFamily: robotoFont,
  );
  static TextStyle bodySmallInterNormal = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    height: 1.15,
    fontFamily: interFont,
  );
  static TextStyle bodyXSmallInterNormal = TextStyle(
    fontSize: 6.9,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    height: 1.3,
    fontFamily: interFont,
  );

  static final TextStyle extraLargeRobotoBold = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w700,
    height: 1.172,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle extraLargeRobotoSemiBold = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w500,
    height: 1.172,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static const TextStyle xXLargeRobotoSemiBold = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    height: 1.17,
    color: AppColors.textDark,
    fontFamily: interFont,
  );
  static const TextStyle xXXLargeRobotoSemiBold = TextStyle(
    fontSize: 29,
    fontWeight: FontWeight.w500,
    height: 1.17,
    color: AppColors.white,
    fontFamily: interFont,
  );
  static final TextStyle bodyLargeRobotoBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle bodyLargeRobotoSemiBold = TextStyle(
    height: 1.17,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle largeRobotoNormal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle largeSemiBoldRoboto = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle largeBoldRoboto = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle subHeadingSemiBoldRoboto = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
    fontFamily: robotoFont,
  );
  static final TextStyle bodySemiBoldRoboto = TextStyle(
    color: AppColors.textDark,
    fontSize: 9,
    fontWeight: FontWeight.w500,
    fontFamily: robotoFont,
  );
  static final TextStyle bodyTextRoboto = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    fontFamily: robotoFont,
  );
  static final TextStyle bodyTextBoldRoboto = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: AppColors.textLight,
    fontFamily: robotoFont,
  );
  static final TextStyle bodyTextRobotoSemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGreen,
    fontFamily: robotoFont,
  );
  static const TextStyle textFormFieldStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textDark,
    fontFamily: interFont,
  );
  static TextStyle bodyLargeSemiBoldTextInter = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
    fontFamily: interFont,
  );
  static TextStyle bodyTextInterSemibold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.textLight,
    fontFamily: interFont,
  );

  static TextStyle bodyTextInter = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    fontFamily: interFont,
  );

  static TextStyle subHeadingInter = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    fontFamily: interFont,
  );

  static TextStyle subHeadingInter2 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
    fontFamily: interFont,
  );
}
