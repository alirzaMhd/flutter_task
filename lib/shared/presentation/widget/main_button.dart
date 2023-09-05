import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:period_tracker/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String _text;
  final Size size;
  final VoidCallback onPressed;

  const RoundedButton({
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
      style: 
      child: Text(_text),
    );
  }
}
