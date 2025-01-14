import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redi/constants/constants.dart';
import 'screens/home_splash_screen.dart';

void main() {
  runApp(const RediApp());
}

class RediApp extends StatelessWidget {
  const RediApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return Builder(builder: (context) {
      AppMeasure.width = MediaQuery.of(context).size.width;
      AppMeasure.height = MediaQuery.of(context).size.height;

      return MaterialApp(
        home: HomeSplashScreen(),
        theme: ThemeData(fontFamily: 'Garamond'),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
