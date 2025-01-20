import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';

class LeadboardScreen extends StatelessWidget {
  const LeadboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 40,
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            GoBackButton(),
          ],
        ),
      ),
    );
  }
}
