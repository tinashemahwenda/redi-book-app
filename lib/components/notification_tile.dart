import 'package:flutter/material.dart';

import '../constants/constants.dart';

class NotificationTile extends StatelessWidget {
  final String notificationName;
  final String notificationTime;
  const NotificationTile(
      {super.key,
      required this.notificationName,
      required this.notificationTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppMeasure.width,
      height: AppMeasure.height / 10,
      child: Row(
        spacing: 20,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/reading.png'),
              radius: 30,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: AppMeasure.width / 2,
                child: Text(
                  'New chapter added',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Today, 8.04am',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Icon(
            Icons.delete_outline,
            color: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
