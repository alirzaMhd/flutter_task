import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';

class ButtonStylesConstants {
  static ButtonStyle textButtonStyle({required Size size}) {
    return ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(size),
        backgroundColor: MaterialStateProperty.all<Color>(Pallete.purpleColor),
        textStyle: MaterialStateProperty.all<TextStyle>(),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(UIConstants.mainButtonCornerRoundness),
          ),
        ),
      ),
  }
}
