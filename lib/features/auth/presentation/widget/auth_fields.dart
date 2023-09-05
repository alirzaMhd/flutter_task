import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/features/auth/presentation/widget/custom_text_field.dart';

class AuthFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const AuthFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Pallete.whiteColor,
        child: Column(
          children: [
            CustomTextField(hintText: StringConstants.email, controller: emailController),
            VerticalDivider(width: UIConstants.authFieldVerticalDividerWith.w,),
            CustomTextField(hintText: StringConstants.password, controller: passwordController),
          ],
        ));
  }
}
