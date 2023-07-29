import 'package:begginer/utils/Pallete.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: CircularProgressIndicator(
                color: Pallete.white,
              ),
            )
          ],
        )),
      ),
    );
  }
}
