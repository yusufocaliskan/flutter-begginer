import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class CerciTextButton extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;
  final Icon? icon;
  const CerciTextButton(
      {super.key, this.icon, required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
          onTap: onPressed,
          child: Row(
            children: [
              if (icon != null) icon!,
              const SizedBox(
                width: 10,
              ),
              if (text != null)
                Text(
                  text!,
                  style: const TextStyle(fontSize: 18),
                )
            ],
          )),
    );
  }
}
