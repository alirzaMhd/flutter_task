import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/features/auth/domain/use_cases/use_cases.dart';
import 'package:flutter_task/features/auth/presentation/widget/widget.dart';
import 'package:flutter_task/shared/presentation/widget/widget.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void onLogin() {
    // ref.read(authControllerProvider.notifier).login(
    //       email: emailController.text,
    //       password: passwordController.text,
    //       context: context,
    //     );
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
                onPressed: AuthScreenUseCases.login,
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
