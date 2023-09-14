import 'package:begginer/utils/Pallete.dart';
import 'package:begginer/widgets/Form/Buttons/CerciButton.dart';
import 'package:begginer/widgets/Form/Buttons/CerciTextButton.dart';
import 'package:begginer/widgets/Form/Inputs/CerciFormInput.dart';
import 'package:begginer/widgets/Theme/Header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  void handleGo2NextRegisterStep(BuildContext context) {
    print("Go Back!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: double.infinity,
        child: Expanded(
            child: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(canGoBack: true, title: 'Register'),
              const SizedBox(
                height: 20,
              ),
              const CerciFormInput(
                  labelText: "Full name",
                  placeholder: "Enter your full name here"),
              const CerciFormInput(
                  labelText: "E-mail", placeholder: "Enter your e-mail here"),
              const CerciFormInput(
                  labelText: "Username",
                  placeholder: "Enter your user name here"),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CerciButton(
                      rightIcon: const Icon(FontAwesomeIcons.arrowRight,
                          color: Pallete.white),
                      labelText: "Next step",
                      onPressed: () => handleGo2NextRegisterStep(context))
                ],
              )
            ],
          ),
        )),
      )),
    );
  }
}
