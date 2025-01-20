import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';

class LeadboardScreen extends StatelessWidget {
  const LeadboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GoBackButton(),
        ],
      ),
    );
  }
}
