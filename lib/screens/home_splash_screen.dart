import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSplashScreen extends StatelessWidget {
  const HomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SvgPicture.asset(
          'assets/images/splash.svg',
        )
      ],
    ));
  }
}
