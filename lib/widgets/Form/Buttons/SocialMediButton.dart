import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final Icon icon;

  const SocialMediButton(
      {super.key, required this.icon, required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Pallete.darkGray,
          border: Border.all(color: Pallete.grayBorder)),
      child: InkWell(
          onTap: onPressed,
          child: Row(
            children: [
              icon,
              if (text != null)
                const SizedBox(
                  width: 8,
                ),
              if (text != null)
                Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )
            ],
          )),
    );
  }
}
