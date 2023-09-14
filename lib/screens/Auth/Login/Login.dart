import 'package:begginer/screens/Auth/Register/Register.dart';
import 'package:begginer/utils/Pallete.dart';
import 'package:begginer/widgets/Divider/DividerWithText.dart';
import 'package:begginer/widgets/Form/Buttons/CerciButton.dart';
import 'package:begginer/widgets/Form/Buttons/CerciTextButton.dart';
import 'package:begginer/widgets/Form/Buttons/SocialMediButton.dart';
import 'package:begginer/widgets/Form/Inputs/CerciFormInput.dart';
import 'package:begginer/widgets/Theme/Header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void handleOnPressLoginButton(BuildContext context) {
    print("Pressed Logiiinn Button");
  }

  void handleOnPressRegisterButton(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Register()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 130),
            const Header(title: 'Login', canGoBack: false),
            const SizedBox(height: 40),
            const CerciFormInput(
              labelText: "E-mail: ",
              placeholder: "Type your e-mail here",
            ),
            const CerciFormInput(
              labelText: 'Password: ',
              placeholder: "Type your password here",
            ),
            const SizedBox(height: 20),
            CerciButton(
              icon: const Icon(
                FontAwesomeIcons.arrowRightToBracket,
                color: Pallete.white,
              ),
              labelText: "Login",
              onPressed: () => handleOnPressLoginButton(context),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CerciTextButton(
                  text: "Don't have an account?",
                  onPressed: () => handleOnPressRegisterButton(context),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const DividerWithText(text: "OR"),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SocialMediButton(
                icon: const Icon(
                  FontAwesomeIcons.google,
                  size: 28,
                ),
                onPressed: () {
                  print('Login with Google');
                },
              ),
              SocialMediButton(
                icon: const Icon(
                  FontAwesomeIcons.facebookF,
                  size: 30,
                ),
                onPressed: () {
                  print('Login with Facebook');
                },
              ),
              SocialMediButton(
                icon: const Icon(
                  FontAwesomeIcons.github,
                  size: 30,
                ),
                onPressed: () {
                  print('Login with Facebook');
                },
              ),
            ])
          ]),
        ),
      ),
    ));
  }
}
