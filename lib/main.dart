import 'package:flutter/material.dart';
import 'package:redi/constants/constants.dart';
import 'package:redi/screens/homescreen.dart';

void main() {
  runApp(const RediApp());
}

class RediApp extends StatelessWidget {
  const RediApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AppMeasure.width = MediaQuery.of(context).size.width;
      AppMeasure.height = MediaQuery.of(context).size.height;

      return MaterialApp(
        home: HomePage(),
        theme: ThemeData(fontFamily: 'Garamond'),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
