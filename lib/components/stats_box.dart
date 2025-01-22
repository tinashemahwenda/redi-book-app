import 'package:flutter/material.dart';

import '../constants/constants.dart';

class StatsBox extends StatelessWidget {
  const StatsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppMeasure.width,
      height: AppMeasure.height / 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 10,
            children: [
              Icon(
                Icons.book_outlined,
                color: Colors.deepPurple,
              ),
              Text(
                '20 books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                'saved',
                style: TextStyle(
                  height: 0,
                ),
              ),
            ],
          ),
          Column(
            spacing: 10,
            children: [
              Icon(
                Icons.timer_outlined,
                color: Colors.deepPurple,
              ),
              Text(
                '3hrs ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text('read time'),
            ],
          ),
          Column(
            spacing: 10,
            children: [
              Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.deepPurple,
              ),
              Text(
                '12 books ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text('completed'),
            ],
          ),
        ],
      ),
    );
  }
}
