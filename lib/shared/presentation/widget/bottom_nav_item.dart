import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';

class BottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function(int) onTap;
  final int index;
  final int selectedPageIndex;
  const BottomNavBarItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.index,
    required this.selectedPageIndex,
  });
  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedPageIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              color: isSelected ? Pallete.purpleColor : Pallete.backgroundColor,
              size: 15.sp),
          Text(
            text,
            style: TextStylesConstants.labelLarge(context)!.copyWith(
                color:
                    isSelected ? Pallete.purpleColor : Pallete.backgroundColor),
          ),
        ],
      ),
    );
  }
}
