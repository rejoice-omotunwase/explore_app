import 'package:flutter/material.dart';

class FilterBottomButton extends StatelessWidget {
  const FilterBottomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.borderSide,
    required this.textColor,
  }) : super(key: key);
  final String title;
  final Function() onPressed;
  final Color color;
  final Color borderSide;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              color: borderSide, width: 1.0, style: BorderStyle.solid)),
          backgroundColor: MaterialStateProperty.all(color)),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
