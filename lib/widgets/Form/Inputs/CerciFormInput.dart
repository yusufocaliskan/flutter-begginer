import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class CerciFormInput extends StatelessWidget {
  final String labelText;
  final String placeholder;

  const CerciFormInput(
      {super.key, required this.labelText, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
        child: Text(
          labelText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 4, bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Pallete.gray),
        child: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: placeholder),
        ),
      )
    ]);
  }
}
