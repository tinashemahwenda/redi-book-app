import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SettingsModal extends StatelessWidget {
  const SettingsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: AppMeasure.width,
        height: AppMeasure.height / 3,
        color: Colors.white,
        child: Column(
          children: [
            Text(
              'Themes & Settings',
              style: TextStyle(fontFamily: 'Garomond-Bold'),
            )
          ],
        ),
      ),
    );
  }
}
