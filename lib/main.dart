import 'package:begginer/screens/Auth/Login/Login.dart';
import 'package:begginer/screens/Auth/Register/Register.dart';
import 'package:begginer/screens/SplashScreen/SplashScreen.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AppStartUp());
}

class AppStartUp extends StatelessWidget {
  const AppStartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
      //home: const SplashScreen(),
      routes: {
        "/": (context) => const SplashScreen(),
        "login": (context) => const LoginScreen(),
        "register": (context) => const Register()
      },
    );
  }
}
