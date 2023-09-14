import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        const Expanded(child: Divider(color: Pallete.black, height: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(text, style: const TextStyle(color: Pallete.black)),
        ),
        const Expanded(child: Divider(color: Pallete.black, height: 1))
      ]),
    );
  }
}
