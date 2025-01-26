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
            SizedBox(height: 30),
            GoBackButton(),
            Text('Theme Settings'),
            SizedBox(height: 20),
            Image.asset('assets/images/theme.png'),
          ],
        ),
      ),
    );
  }
}
