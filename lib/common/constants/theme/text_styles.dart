import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

@immutable
abstract class AppTextStyles {
  const AppTextStyles._();

  static TextStyle displayLarge() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 28.sp,
    );
  }

  static TextStyle displayMedium() {
    return GoogleFonts.montserrat(
      color: AppColors.black100,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal,
      fontSize: 22.sp,
    );
  }

  static TextStyle displaySmall() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 36.sp,
    );
  }

  static TextStyle headLineLarge() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 32.sp,
    );
  }

  static TextStyle headLineMedium() {
    return GoogleFonts.montserrat(
      color: AppColors.black100,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 28.sp,
    );
  }

  static TextStyle headLineSmall() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 24.sp,
    );
  }

  static TextStyle titleLarge() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 22.sp,
    );
  }

  static TextStyle titleMedium() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
    );
  }

  static TextStyle titleSmall() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 14.sp,
    );
  }

  static TextStyle bodyLarge() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle bodyMedium() {
    return GoogleFonts.montserrat(
      color: AppColors.black100,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
    );
  }

  static TextStyle bodySmall() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 13.sp,
    );
  }

  static TextStyle labelLarge() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 14.sp,
    );
  }

  static TextStyle labelMedium() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 12.sp,
    );
  }

  static TextStyle labelSmall() {
    return GoogleFonts.montserrat(
      color: AppColors.white,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontSize: 11.sp,
    );
  }
}
