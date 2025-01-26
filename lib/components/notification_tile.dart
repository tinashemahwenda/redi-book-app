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
          CircleAvatar(
            radius: 30,
            child: Icon(
              Icons.menu_book_outlined,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: AppMeasure.width / 1.6,
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
          )
        ],
      ),
    );
  }
}
