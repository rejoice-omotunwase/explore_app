import 'package:flutter/material.dart';

class buildRow extends StatelessWidget {
  const buildRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Text(
            "$title:",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 16),
          ),
          Text(
            "   $value",
            softWrap: true,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.w400,
                fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
