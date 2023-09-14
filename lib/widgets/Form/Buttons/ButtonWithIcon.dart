import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const ButtonWithIcon(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Pallete.darkGray, borderRadius: BorderRadius.circular(100)),
      child: InkWell(
        onTap: onPressed,
        child: icon,
      ),
    );
  }
}
