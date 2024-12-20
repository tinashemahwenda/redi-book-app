import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: AppMeasure.width,
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search library for books...'),
        ),
        color: Colors.grey[200],
      ),
    );
  }
}
