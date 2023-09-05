import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/features/auth/presentation/provider/provider.dart';
import 'package:flutter_task/features/auth/presentation/widget/widget.dart';
import 'package:flutter_task/shared/presentation/widget/widget.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: StringConstants.authorization),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: AuthFields(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
              ),
              SizedBox(height: 32.h),
              MainButton(
                text: StringConstants.login,
                size: Size(
                  UIConstants.authButtonWidth.w,
                  UIConstants.authButtonHeight.h,
                ),
                onPressed: () => ref.read(authRepositoryProvider).login(
                    emailController.text, passwordController.text, context),
              ),
              SizedBox(height: 19.h),
              MainButton(
                text: StringConstants.register,
                size: Size(
                  UIConstants.authButtonWidth.w,
                  UIConstants.authButtonHeight.h,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
