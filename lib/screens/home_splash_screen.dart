import 'package:flutter/material.dart';

class HomeSplashScreen extends StatelessWidget {
  const HomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Image.asset('assets/images/splash.svg')],
    ));
  }
}
