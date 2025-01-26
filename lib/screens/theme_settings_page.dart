import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GoBackButton(),
            Text('Theme Settings'),
          ],
        ),
      ),
    );
  }
}
