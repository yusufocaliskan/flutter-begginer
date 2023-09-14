import 'package:begginer/utils/Pallete.dart';
import 'package:begginer/widgets/Form/Buttons/ButtonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  final bool canGoBack;
  final String title;

  const Header({
    super.key,
    required this.canGoBack,
    required this.title,
  });
  void handleOnPressBackButton(BuildContext context) {
    print('Go Back object');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (canGoBack)
          ButtonWithIcon(
              onPressed: () => handleOnPressBackButton(context),
              icon: const Icon(FontAwesomeIcons.chevronLeft)),
        const SizedBox(
          height: 29,
        ),
        Text(title,
            style: const TextStyle(
                color: Pallete.black,
                fontSize: 44,
                fontWeight: FontWeight.bold)),
      ]),
    );
  }
}
