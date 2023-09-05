import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStylesConstants.bodySmall(context)!
          .copyWith(color: Pallete.blackColor),
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.fromLTRB(UIConstants.textfiledPadding.w, 0, 0, 0),
          hintText: hintText,
          hintStyle: TextStylesConstants.bodySmall(context)!
              .copyWith(color: Pallete.lightGreyColor)),
    );
  }
}
