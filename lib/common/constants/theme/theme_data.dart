import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_hackathon/common/constants/theme/text_styles.dart';

import '../colors.dart';

@immutable
abstract class AppThemeData {
  static const Brightness brightnessLight = Brightness.light;
  static const Brightness brightnessDark = Brightness.dark;

  static final ThemeData _theme = ThemeData(
    fontFamily: 'montserratAlternates',
    primaryColor: AppColors.primary100,
    brightness: Brightness.light,
    canvasColor: AppColors.gray300,
    scaffoldBackgroundColor: AppColors.gray300,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: AppColors.gray100, width: 1.sp),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.gray100),
      actionsIconTheme: const IconThemeData(color: AppColors.black),
      centerTitle: true,
      titleTextStyle: GoogleFonts.montserrat(
        color: AppColors.gray100,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      hintStyle: const TextStyle(
        color: AppColors.white,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 14,
        height: 1.6,
      ),
      errorStyle: const TextStyle(
        color: AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 14,
        height: 1.6,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(
          color: AppColors.white,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(
          color: AppColors.black,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(
          color: AppColors.red100,
        ),
      ),
      focusColor: AppColors.red100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(
          color: AppColors.white,
          width: 2,
        ),
      ),
    ),
    primaryTextTheme: TextTheme(
      displayLarge: AppTextStyles.displayLarge(),
      displayMedium: AppTextStyles.displayMedium(),
      displaySmall: AppTextStyles.displaySmall(),
      headlineLarge: AppTextStyles.headLineLarge(),
      headlineSmall: AppTextStyles.headLineSmall(),
      headlineMedium: AppTextStyles.headLineMedium(),
      titleLarge: AppTextStyles.titleLarge(),
      titleMedium: AppTextStyles.titleMedium(),
      titleSmall: AppTextStyles.titleSmall(),
      bodyLarge: AppTextStyles.bodyLarge(),
      bodyMedium: AppTextStyles.bodyMedium(),
      bodySmall: AppTextStyles.bodySmall(),
    ),
    primaryIconTheme: const IconThemeData(color: AppColors.black),
    iconTheme: const IconThemeData(color: AppColors.black),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: AppColors.gray100, width: 1.sp),
      ),
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          color: AppColors.gray100,
        ),
      ),
      buttonColor: AppColors.gray100,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      textTheme: ButtonTextTheme.primary,
      disabledColor: AppColors.gray200,
    ),
  );


  static ThemeData theme() => _theme;

  const AppThemeData._();
}

ThemeData theme = ThemeData(
  fontFamily: 'montserratAlternates',
  primaryColor: AppColors.primary100,
  brightness: Brightness.light,
  canvasColor: AppColors.gray300,
  scaffoldBackgroundColor: AppColors.gray300,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: BorderSide(color: AppColors.gray100, width: 1.sp),
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.white,
    iconTheme: const IconThemeData(color: AppColors.gray100),
    actionsIconTheme: const IconThemeData(color: AppColors.black),
    centerTitle: true,
    titleTextStyle: GoogleFonts.montserrat(
      color: AppColors.gray100,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
    hintStyle: const TextStyle(
      color: AppColors.white,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      height: 1.6,
    ),
    errorStyle: const TextStyle(
      color: AppColors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      height: 1.6,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: AppColors.white,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: AppColors.black,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: AppColors.red100,
      ),
    ),
    focusColor: AppColors.red100,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: AppColors.white,
        width: 2,
      ),
    ),
  ),
  primaryTextTheme: TextTheme(
    displayLarge: AppTextStyles.displayLarge(),
    displayMedium: AppTextStyles.displayMedium(),
    displaySmall: AppTextStyles.displaySmall(),
    headlineLarge: AppTextStyles.headLineLarge(),
    headlineSmall: AppTextStyles.headLineSmall(),
    headlineMedium: AppTextStyles.headLineMedium(),
    titleLarge: AppTextStyles.titleLarge(),
    titleMedium: AppTextStyles.titleMedium(),
    titleSmall: AppTextStyles.titleSmall(),
    bodyLarge: AppTextStyles.bodyLarge(),
    bodyMedium: AppTextStyles.bodyMedium(),
    bodySmall: AppTextStyles.bodySmall(),
  ),
  primaryIconTheme: const IconThemeData(color: AppColors.black),
  iconTheme: const IconThemeData(color: AppColors.black),
  cardTheme: CardTheme(
    margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: BorderSide(color: AppColors.gray100, width: 1.sp),
    ),
    elevation: 0,
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: const BorderSide(
        color: AppColors.gray100,
      ),
    ),
    buttonColor: AppColors.gray100,
    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
    textTheme: ButtonTextTheme.primary,
    disabledColor: AppColors.gray200,
  ),
);

