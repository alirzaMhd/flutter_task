import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';

class LogoutButton extends StatelessWidget {
  final String _text;
  final Size size;
  final VoidCallback onPressed;

  const LogoutButton({
    Key? key,
    required text,
    required this.size,
    required this.onPressed,
  })  : _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: ButtonStylesConstants.logoutButtonStyles(size: size),
        child: Padding(
          padding: EdgeInsets.only(left: 29.w),
          child: Text(_text,
              style: TextStylesConstants.bodyMedium(context)!
                  .copyWith(color: Pallete.redColor)),
        ));
  }
}
