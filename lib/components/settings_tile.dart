import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppMeasure.width,
          height: AppMeasure.height / 16,
          child: Row(
            children: [
              Row(
                spacing: 20,
                children: [
                  Icon(Icons.notifications_none),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
