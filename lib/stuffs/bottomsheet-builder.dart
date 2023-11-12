import 'package:flutter/material.dart';

class BottomSheetBuilder extends StatelessWidget {
  const BottomSheetBuilder({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final Function() onPressed;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              color: Theme.of(context).colorScheme.primary,
              // width: 1.0,
              style: BorderStyle.solid)),
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.background)),
      onPressed: onPressed,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(16, 24, 40, 0.05),
              offset: Offset(0, 1),
              spreadRadius: 0,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 30,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Text(
              // "EN",
              title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
