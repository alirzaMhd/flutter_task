import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';

class ButtonStylesConstants {
  static ButtonStyle mainButtonStyles({required Size size}) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(size),
      foregroundColor: MaterialStateProperty.all<Color>(Pallete.whiteColor),
      backgroundColor: MaterialStateProperty.all<Color>(Pallete.purpleColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(UIConstants.mainButtonCornerRoundness),
        ),
      ),
    );
  }
  static ButtonStyle logoutButtonStyles({required Size size}) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(size),
      backgroundColor: MaterialStateProperty.all<Color>(Pallete.whiteColor),
      foregroundColor: MaterialStateProperty.all<Color>(Pallete.redColor),
    );
  }
}
