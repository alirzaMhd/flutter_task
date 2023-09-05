import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';

class MainButton extends StatelessWidget {
  final String _text;
  final Size size;
  final VoidCallback onPressed;

  const MainButton({
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
      style: ButtonStylesConstants.mainButtonStyles(size: size),
      child: Text(_text, style: TextStylesConstants.bodyMedium(context)),
    );
  }
}
