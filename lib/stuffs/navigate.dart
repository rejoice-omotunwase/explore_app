import 'package:flutter/material.dart';

class NavigateIcon extends StatelessWidget {
  const NavigateIcon({Key? key, this.icon, this.onPress}) : super(key: key);
  final IconData? icon;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      fillColor: Colors.grey.shade400,
      constraints: const BoxConstraints.tightFor(width: 20, height: 20),
      elevation: 0.0,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
