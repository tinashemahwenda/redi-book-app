import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BooksLsitingGrid extends StatelessWidget {
  const BooksLsitingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppMeasure.height / 1.3,
      width: AppMeasure.width,
      child: GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 10),
          child: Container(
            width: 100,
            color: Colors.grey[100],
          ),
        ),
      ),
    );
  }
}
