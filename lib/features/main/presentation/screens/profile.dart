import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/features/main/presentation/widget/logout_button.dart';
import 'package:flutter_task/shared/presentation/widget/custom_app_bar.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringConstants.profile,
      ),
      body: SizedBox(
        width: UIConstants.screenWidth.w,
        height: UIConstants.screenHeight.h,
        child: Column(
          children: [
            SizedBox(height: 38.h),
            Image.asset(AssetConstants.profilePic, width: 64.h, height: 64.h),
            SizedBox(height: 15.h),
            Center(
              child: Text(
                "name",
                style: TextStylesConstants.bodyLarge(context)!
                    .copyWith(color: Pallete.blackColor),
              ),
            ),
            SizedBox(height: 12.h),
            Center(
              child: Text(
                "name",
                style: TextStylesConstants.bodySmall(context)!
                    .copyWith(color: Pallete.darkGreyColor),
              ),
            ),
            SizedBox(height: 12.h),
            LogoutButton(
                text: StringConstants.logout,
                size: Size(
                  UIConstants.logoutButtonWidth.w,
                  UIConstants.logoutButtonHeight.h,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
