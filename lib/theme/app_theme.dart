import 'package:flutter/material.dart';
import '../constants/constants.dart';

class AppTheme {
  static ThemeData themeLight = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Pallete.backgroundColor,
      appBarTheme: const AppBarTheme(
        foregroundColor: Pallete.blackColor,
        backgroundColor: Pallete.appbarColor,
        centerTitle: UIConstants.centerTitle,
      ));
}
