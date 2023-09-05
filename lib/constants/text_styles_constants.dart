import 'package:flutter/material.dart';
class TextStylesConstants {
  //TODO make font sizes responsive
  static const String caremSansFontFamily = 'CarmenSans';

  static const double titleLargeFontSize = 15;
  static const double bodyLargeFontSize = 24;
  static const double bodyMediumFontSize = 16;
  static const double bodySmallFontSize = 16;
  static const double labelLargeFontSize=10;


  static TextStyle? titleLarge(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: titleLargeFontSize,
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle? bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyLargeFontSize,
          fontWeight: FontWeight.w600,
        );
  }

  static TextStyle? bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodyMediumFontSize,
          fontWeight: FontWeight.w700,
        );
  }

  static TextStyle? bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: bodySmallFontSize,
          fontWeight: FontWeight.w400,
        );
  }

  static TextStyle? labelLarge(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
          fontFamily: caremSansFontFamily,
          fontSize: labelLargeFontSize,
          fontWeight: FontWeight.w400,
        );
  }

}
