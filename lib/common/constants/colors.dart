import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter/material.dart' show Colors, Color;


@immutable
abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const black100 = Color(0xFF0E0E0D);

  static const red = Colors.red;
  static const red100 = Color(0xFF7C2946);
  static const redDark = Colors.redAccent;
  static const transparent = Colors.transparent;
  static const primary100 = Color(0XFF4BB299);
  static const gray100 = Color(0xFF373737);
  static const gray200 = Color(0xFFC6C6C6);
  static const gray300 = Color(0xFFE0E2E6);
  static const gray400 = Color(0xFFEBEDED);
  static const gray500 = Color(0xFFE6E0E0);
  static const gray600 = Color.fromARGB(255, 218, 225, 224);
  static const gray700 = Colors.grey;


  // static const primary200 = Color(0xFFFC7A3E);
  // static const primary300 = Color(0xFFFD9E72);
  // static const primary400 = Color(0xFFFEC3A7);
  // static const primary500 = Color(0xFFFEE7DC);
  // static const secondary100 = Color(0xFF976DFD);
  // static const secondary200 = Color(0xFFAE8DFD);
  // static const secondary300 = Color(0xFFC4ACFE);
  // static const secondary400 = Color(0xFFDACBFE);
  // static const secondary500 = Color(0xFFF0EAFF);
  // static const secondary600 = Color(0xFF8654F1);
  // static const accent100 = Color(0xFF2FE062);
  // static const accent200 = Color(0xFF5BE783);
  // static const accent300 = Color(0xFF88EDA5);
  // static const accent400 = Color(0xFFB5F4C6);
  // static const accent500 = Color(0xFFE1FBE8);
  //
  // static const gray400 = Color(0xFF5A5A5A);
  // static const gray500 = Color(0xFF363636);
  // static const gray600 = Color(0xFFD9D9D9);
  // static const text100 = Color(0xFF111111);
  // static const text200 = Color(0xFF454545);
  // static const text300 = Color(0xFF777777);
  // static const text400 = Color(0xFFAAAAAA);
  // static const text500 = Color(0xFFDDDDDD);
  // static const text600 = Color(0xFF4D4D4D);
  // static const primaryDark = Color(0xFFFC7A3E);
  // static const shimmerColor = Color(0xFFE8ECF1);
  // static final barrierColor = const Color(0xFF02050A).withOpacity(.85);
  // static const yellow100 = Color(0xFFFEEF67);
  const AppColors._();

  // static Color backgroundColor(ThemeMode themeMode) {
  //   return decideDisplayValueForCurrentThemeMode(
  //       darkValue: gray100, lightValue: gray100, themeMode: themeMode);
  // }
  //
  // static Color accentColor(ThemeMode themeMode) {
  //   return decideDisplayValueForCurrentThemeMode(
  //       darkValue: accent100, lightValue: accent100, themeMode: themeMode);
  // }
  //
  // static Color errorColor(ThemeMode themeMode) {
  //   return decideDisplayValueForCurrentThemeMode(
  //       darkValue: redDark, lightValue: red, themeMode: themeMode);
  // }
}