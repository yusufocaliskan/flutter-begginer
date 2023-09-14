import 'package:begginer/screens/Auth/Register/Register.dart';
import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CerciButton extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;
  final Icon? icon;
  final Icon? rightIcon;

  const CerciButton(
      {this.icon,
      this.rightIcon,
      required this.labelText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: const EdgeInsets.only(top: 4, bottom: 15),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
            color: Pallete.purple, borderRadius: BorderRadius.circular(100)),
        child: InkWell(
          onTap: onPressed,
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (icon != null) icon!,
                  if (icon != null)
                    const SizedBox(
                      width: 20,
                    ),
                  Text(
                    labelText,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Pallete.white,
                        fontWeight: FontWeight.bold),
                  ),
                  if (rightIcon != null) rightIcon!
                ],
              )),
        ),
      ),
    ]);
  }
}
