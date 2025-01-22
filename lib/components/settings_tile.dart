import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SettingsTile extends StatelessWidget {
  final String settingTileName;
  final IconData iconName;
  const SettingsTile({
    super.key,
    required this.iconName,
    required this.settingTileName,
  });

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
                  Icon(iconName),
                  Text(
                    settingTileName,
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
