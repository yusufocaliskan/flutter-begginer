import 'package:begginer/screens/Auth/Login/Login.dart';
import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //move to login page after 3 secs.
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });

    return Scaffold(
      body: Container(
        color: Pallete.purple,
        child: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Çercî",
              style: TextStyle(
                  color: Pallete.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              color: Pallete.white,
            ),
          ],
        )),
      ),
    );
  }
}
