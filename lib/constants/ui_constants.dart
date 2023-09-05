import 'package:flutter/material.dart';
import 'package:flutter_task/features/main/presentation/screens/profile.dart';

class UIConstants {
  static const double screenWidth = 375;
  static const double screenHeight = 812;
  static const double mainButtonCornerRoundness = 6;
  static const double bottomNavBarCornerRoundness = 30;
  static const double mainButtonWidth = 343;
  static const double mainButtonHeight = 64;
  static const double bottomNavBarHeight = 83;
  static const double bottomNavBarBottomMargin = 35;
  static const bool centerTitle = true;
  static const double authFieldVerticalDividerWith = 343;
  static const double authButtonWidth = 343;
  static const double authButtonHeight = 64;
  static const double logoutButtonHeight = 55;
  static const double logoutButtonWidth = 375;
  static const double textfieldHeight = 61;
  static const double textfieldWidth = 375;
  static const double textfiledPadding = 16;
  static const List<Widget> bottomTabBarPages = [
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Profile(),
  ];
}
