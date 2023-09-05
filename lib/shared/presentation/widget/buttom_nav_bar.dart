import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/shared/presentation/widget/widget.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int selectedPageIndex;
  const BottomNavBar({
    super.key,
    required this.onTap,
    required this.selectedPageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: UIConstants.bottomNavBarHeight.h,
      margin: EdgeInsets.only(bottom: UIConstants.bottomNavBarBottomMargin.h),
      decoration: const BoxDecoration(
        color: Pallete.whiteColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            UIConstants.bottomNavBarCornerRoundness,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavBarItem(
            icon: Icons.tips_and_updates,
            text: StringConstants.tape,
            onTap: onTap,
            index: 0,
            selectedPageIndex: selectedPageIndex,
          ),
          BottomNavBarItem(
            icon: Icons.water_drop,
            text: StringConstants.map,
            onTap: onTap,
            index: 1,
            selectedPageIndex: selectedPageIndex,
          ),
          BottomNavBarItem(
            icon: Icons.co_present_rounded,
            text: StringConstants.favorites,
            onTap: onTap,
            index: 2,
            selectedPageIndex: selectedPageIndex,
          ),
          BottomNavBarItem(
            icon: Icons.abc,
            text: StringConstants.profile,
            onTap: onTap,
            index: 2,
            selectedPageIndex: selectedPageIndex,
          ),
        ],
      ),
    );
  }
}
